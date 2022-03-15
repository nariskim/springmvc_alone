package com.mycompany.myapp.modules.code;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.mycompany.myapp.modules.code.CodeMpp";
	//paging
	public int selectOneCount(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	//codeGroup
	public List<Code> selectListGroup(CodeVo vo) {
		return sqlSession.selectList(namespace + ".selectListGroup", vo);
	}

	public int insertGroup(Code dto) {
		return sqlSession.insert(namespace + ".insertGroup", dto);
	}
	public Code selectOneGroup(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneGroup", vo);
	}
	public int updateGroup(Code dto) {
		return sqlSession.update(namespace + ".updateGroup", dto);
	}
	//code
	public List<Code> selectList(CodeVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public int insert(Code dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	public Code selectOne(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int update(Code dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	

}