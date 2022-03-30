package com.mycompany.myapp.modules.durian;

import java.util.List;

public interface DurianService {

	public int selectOneCount(DurianVo vo) throws Exception;
	
	public List<Durian> selectList(DurianVo vo) throws Exception;
	
	public List<Durian> selectListPhone(DurianVo vo) throws Exception;

	public List<Durian> selectListEmail(DurianVo vo) throws Exception;
	
	public int insert(Durian dto) throws Exception;
	
	public int insertJoinQna(Durian dto) throws Exception;
	
	public int insertNation(Durian dto) throws Exception;
	
	public int insertAddress(Durian dto) throws Exception;
//	
//	public int insertPhone(Durian dto) throws Exception;
//	
//	public int insertEmail(Durian dto) throws Exception;

	public Durian selectOne(DurianVo vo) throws Exception;

	public int update(Durian dto) throws Exception;
	
	public int updateJoinQna(Durian dto) throws Exception;

	public int updateNation(Durian dto) throws Exception;
//
//	public int updatePhone(Durian dto) throws Exception;
//
//	public int updateEmail(Durian dto) throws Exception;
	
	public int uelete(DurianVo vo) throws Exception;
	
	public int delete(DurianVo vo) throws Exception;
	

}