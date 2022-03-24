package com.mycompany.myapp.modules.durian;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.myapp.modules.code.Code;


@Service
public class DurianServiceImpl implements DurianService {

	@Autowired
	DurianDao dao;

	@Override
	public List<Durian> selectList(DurianVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Durian dto) throws Exception {
		return dao.insert(dto);
	}

	
	@Override
	public Durian selectOne(DurianVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Durian dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int selectOneCount(DurianVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@PostConstruct
	public void selectListForCache() {
		List<Durian> codeListFromDb = (ArrayList<Durian>) dao.selectListForCache();
		 
		Durian.cachedCodeArrayList.clear();
		Durian.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList:" + Durian.cachedCodeArrayList.size() + "chached !");
	}

	public static List<Durian> selectListCachedCode(String oycgSeq) throws Exception {
		List<Durian> rt = new ArrayList<Durian>();
		for (Durian codeRow : Durian.cachedCodeArrayList) {
			if (codeRow.getOycgSeq().equals(oycgSeq)) {
				rt.add(codeRow);
			} else {

			}
		}
		return rt;
	}
	
}