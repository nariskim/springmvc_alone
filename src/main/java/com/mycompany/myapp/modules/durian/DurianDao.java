package com.mycompany.myapp.modules.durian;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class DurianDao {

	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.mycompany.myapp.modules.durian.DurianMpp";

	//paging
	public int selectOneCount(DurianVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	//selectList
	public List<Durian> selectList(DurianVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	//Form
	public int insertMember(Durian dto) {
		return sqlSession.insert(namespace + ".insertMember", dto);
	}
	public int insertJoinqna(Durian dto) {
		return sqlSession.insert(namespace + ".insertJoinqna", dto);
	}
	public int insertNation(Durian dto) {
		return sqlSession.insert(namespace + ".insertNation", dto);
	}
	public int insertMbNation(Durian dto) {
		return sqlSession.insert(namespace + ".insertMbNation", dto);
	}
	public int insertAddress(Durian dto) {
		return sqlSession.insert(namespace + ".insertAddress", dto);
	}
	public int insertPhone(Durian dto) {
		return sqlSession.insert(namespace + ".insertPhone", dto);
	}
	public int insertEmail(Durian dto) {
		return sqlSession.insert(namespace + ".insertEmail", dto);
	}

	//view, edit
	public Durian selectOne(DurianVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	//update
	public int update_member(Durian dto) {
		return sqlSession.update(namespace + ".update_member", dto);
	}
	public int update_joinqna(Durian dto) {
		return sqlSession.update(namespace + ".update_joinqna", dto);
	}
	

}