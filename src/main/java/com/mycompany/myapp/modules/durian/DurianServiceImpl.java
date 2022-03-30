package com.mycompany.myapp.modules.durian;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.myapp.common.util.UtilDateTime;

@Service
public class DurianServiceImpl implements DurianService {

	@Autowired
	DurianDao dao;

	@Override
	public List<Durian> selectList(DurianVo vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public List<Durian> selectListPhone(DurianVo vo) throws Exception {
		return dao.selectListPhone(vo);
	}

	@Override
	public List<Durian> selectListEmail(DurianVo vo) throws Exception {
		return dao.selectListEmail(vo);
	}

	@Override
	public int insert(Durian dto) throws Exception {

		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());

		
		dao.insert(dto);
		for(int i=0; i<dto.getOympNumberArray().length; i++) {
			dto.setOympDefaultNy(dto.getOympDefaultNyArray()[i]);
			dto.setOympTelecomCd(dto.getOympTelecomCdArray()[i]);
			dto.setOympNumber(dto.getOympNumberArray()[i]);
			dao.insertPhone(dto);
		}
		
		for(int i=0; i<dto.getOymeEmailAccountArray().length; i++) {
			dto.setOymeDefaultNy(dto.getOymeDefaultNyArray()[i]);
			dto.setOymeEmailDomainCd(dto.getOymeEmailDomainCdArray()[i]);
			dto.setOymeEmailAccount(dto.getOymeEmailAccountArray()[i]);
			dto.setOymeEmailDomain(dto.getOymeEmailDomainArray()[i]);
			dao.insertEmail(dto);
		}
		
		dao.insertAddress(dto);
		dao.insertJoinQna(dto);
		dao.insertNation(dto);
	
		
		return 1;
	}

	
	@Override
	public Durian selectOne(DurianVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public Durian selectOneLogin(Durian dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	@Override
	public Durian selectOneId(Durian dto) throws Exception {
		return dao.selectOneId(dto);
	}

	@Override
	public int update(Durian dto) throws Exception {
		dao.update(dto);
		
		dto.setModDateTime(UtilDateTime.nowDate());
		
		for(int i=0; i<dto.getOympNumberArray().length; i++) {
			dto.setOympDefaultNy(dto.getOympDefaultNyArray()[i]);
			dto.setOympTelecomCd(dto.getOympTelecomCdArray()[i]);
			dto.setOympNumber(dto.getOympNumberArray()[i]);
			dao.updatePhone(dto);
		}
		
		for(int i=0; i<dto.getOymeEmailAccountArray().length; i++) {
			dto.setOymeDefaultNy(dto.getOymeDefaultNyArray()[i]);
			dto.setOymeEmailDomainCd(dto.getOymeEmailDomainCdArray()[i]);
			dto.setOymeEmailAccount(dto.getOymeEmailAccountArray()[i]);
			dto.setOymeEmailDomain(dto.getOymeEmailDomainArray()[i]);
			dao.updateEmail(dto);
		}
		
		dao.updateAddress(dto);
		dao.updateJoinQna(dto);
		dao.updateNation(dto);
		
		return 1; 
	}


	@Override
	public int selectOneCount(DurianVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int uelete(DurianVo vo) throws Exception {
		return dao.uelete(vo);

	}

	@Override
	public int delete(DurianVo vo) throws Exception {
		return dao.delete(vo);

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