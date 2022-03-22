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
	public int insertMember(Durian dto) throws Exception {
		return dao.insertMember(dto);
	}

	@Override
	public int insertJoinqna(Durian dto) throws Exception {
		return dao.insertJoinqna(dto);
	}

	@Override
	public int insertNation(Durian dto) throws Exception {
		return dao.insertNation(dto);
	}

	@Override
	public int insertMbNation(Durian dto) throws Exception {
		return dao.insertMbNation(dto);
	}

	@Override
	public int insertAddress(Durian dto) throws Exception {
		return dao.insertAddress(dto);
	}

	@Override
	public int insertPhone(Durian dto) throws Exception {
		return dao.insertPhone(dto);
	}

	@Override
	public int insertEmail(Durian dto) throws Exception {
		return dao.insertEmail(dto);
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
}