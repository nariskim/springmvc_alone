package com.mycompany.myapp.modules.durian;

import java.util.List;

public interface DurianService {

	public int selectOneCount(DurianVo vo) throws Exception;
	

	public List<Durian> selectList(DurianVo vo) throws Exception;
	
	public int insertMember(Durian dto) throws Exception;
	public int insertJoinqna(Durian dto) throws Exception;
	public int insertNation(Durian dto) throws Exception;
	public int insertMbNation(Durian dto) throws Exception;
	public int insertAddress(Durian dto) throws Exception;
	public int insertPhone(Durian dto) throws Exception;
	public int insertEmail(Durian dto) throws Exception;

	public Durian selectOne(DurianVo vo) throws Exception;

	public int update(Durian dto) throws Exception;


}