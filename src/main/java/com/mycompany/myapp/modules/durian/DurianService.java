package com.mycompany.myapp.modules.durian;

import java.util.List;

public interface DurianService {

	public int selectOneCount(DurianVo vo) throws Exception;
	
	public List<Durian> selectList(DurianVo vo) throws Exception;
	
	public int insert(Durian dto) throws Exception;
	
	public int insertJoinQna(Durian dto) throws Exception;
	
	public int insertNationG(Durian dto) throws Exception;
	
	public int insertNation(Durian dto) throws Exception;
	
	public int insertPhone(Durian dto) throws Exception;
	
	public int insertEmail(Durian dto) throws Exception;

	public Durian selectOne(DurianVo vo) throws Exception;

	public int update(Durian dto) throws Exception;


}