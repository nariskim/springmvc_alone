package com.mycompany.myapp.modules.code;

import java.util.List;

public interface CodeService {

	public int selectOneCount(CodeVo vo) throws Exception;

	
	public List<Code> selectListGroup(CodeVo Vo) throws Exception;

	public int insertGroup(Code dto) throws Exception;

	public Code selectOneGroup(CodeVo vo) throws Exception;

	public int updateGroup(Code dto) throws Exception;
	
	
	
	public List<Code> selectList(CodeVo vo) throws Exception;
	
	public int insert(Code dto) throws Exception;
	
	public Code selectOne(CodeVo vo) throws Exception;
	
	public int update(Code dto) throws Exception;

}