package com.mycompany.myapp.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.myapp.common.util.UtilDateTime;


@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectList() throws Exception {
		return dao.selectList();
	}

	@Override
	public int insert(Member dto) throws Exception {
		
			dto.setRegDateTime(UtilDateTime.nowDate());
			dto.setModDateTime(UtilDateTime.nowDate());
	
		return dao.insert(dto); 
		

	}
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		
		return dao.selectOne(vo);
	}
	
	@Override
	public int update(Member dto) throws Exception{
		return dao.update(dto);
		
	}
}