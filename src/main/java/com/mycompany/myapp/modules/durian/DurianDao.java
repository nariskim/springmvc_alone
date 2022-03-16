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
	
	public List<Durian> selectList(DurianVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}

	public int insert(Durian dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	public Durian selectOne(DurianVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int update(Durian dto) {
		return sqlSession.update(namespace + ".update", dto);
	}

	

}