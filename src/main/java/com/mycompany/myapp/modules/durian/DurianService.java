package com.mycompany.myapp.modules.durian;

import java.util.List;

public interface DurianService {

	public List<Durian> selectList() throws Exception;

	public int insert(Durian dto) throws Exception;

	public Durian selectOne(DurianVo vo) throws Exception;

	public int update(Durian dto) throws Exception;

}