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

	// paging
	public int selectOneCount(DurianVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}

	// selectList
	public List<Durian> selectList(DurianVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}

	// selectListPhone
	public List<Durian> selectListPhone(DurianVo vo) {
		return sqlSession.selectList(namespace + ".selectListPhone", vo);
	}

	// selectListEmail
	public List<Durian> selectListEmail(DurianVo vo) {
		return sqlSession.selectList(namespace + ".selectListEmail", vo);
	}

	// Form
	public int insert(Durian dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}

	public int insertJoinQna(Durian dto) {
		return sqlSession.insert(namespace + ".insertJoinQna", dto);
	}

	public int insertNation(Durian dto) {
		return sqlSession.insert(namespace + ".insertNation", dto);
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

	// view, edit
	public Durian selectOne(DurianVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}

	public Durian selectOneLogin(Durian dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}

	public Durian selectOneId(Durian dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}

	// update
	public int update(Durian dto) {
		return sqlSession.update(namespace + ".update", dto);
	}

	public int updateJoinQna(Durian dto) {
		return sqlSession.update(namespace + ".updateJoinQna", dto);
	}

	public int updateNation(Durian dto) {
		return sqlSession.update(namespace + ".updateNation", dto);
	}

	public int updatePhone(Durian dto) {
		return sqlSession.update(namespace + ".updatePhone", dto);
	}

	public int updateEmail(Durian dto) {
		return sqlSession.update(namespace + ".updateEmail", dto);
	}
	
	public int updateAddress(Durian dto) {
		return sqlSession.update(namespace + ".updateAddress", dto);
	}

	public int uelete(DurianVo vo) {
		return sqlSession.update(namespace + ".uelete", vo);
	}

	public int delete(DurianVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}

	public List<Durian> selectListForCache() {
		List<Durian> list = sqlSession.selectList(namespace + ".selectListForCache", "");
		return list;
	}

}