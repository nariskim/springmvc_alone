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

	public List<Code> selectListGroup() {
		return sqlSession.selectList(namespace + ".selectListGroup", "");
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

	public List<Code> selectList() {
		return sqlSession.selectList(namespace + ".selectList", "");
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