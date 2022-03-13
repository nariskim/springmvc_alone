package com.mycompany.myapp.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;

	@Override
	public List<Code> selectListGroup(CodeVo vo) throws Exception {
		return dao.selectListGroup(vo);
	}

	@Override
	public int insertGroup(Code dto) throws Exception {
		return dao.insertGroup(dto);
	}
	@Override
	public Code selectOneGroup(CodeVo vo) throws Exception {
		
		return dao.selectOneGroup(vo);
	}
	
	@Override
	public int updateGroup(Code dto) throws Exception{
		return dao.updateGroup(dto);
		
	}
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Code dto) throws Exception {
		return dao.insert(dto);
	}
	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		
		return dao.selectOne(vo);
	}
	
	@Override
	public int update(Code dto) throws Exception{
		return dao.update(dto);
		
	}
}