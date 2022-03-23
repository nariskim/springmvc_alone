package com.mycompany.myapp.modules.durian;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		return dao.insertMember(dto);
	}

	
	@Override
	public Durian selectOne(DurianVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Durian dto) throws Exception {
		dao.update_member(dto);
		dao.update_joinqna(dto);
	
		return 1;
	}

	@Override
	public int selectOneCount(DurianVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
}