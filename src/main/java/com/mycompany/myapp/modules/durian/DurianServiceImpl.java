package com.mycompany.myapp.modules.durian;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.myapp.common.util.UtilDateTime;

@Service
public class DurianServiceImpl implements DurianService {

	@Autowired
	DurianDao dao;

	@Override
	public List<Durian> selectList(DurianVo vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public List<Durian> selectListPhone(DurianVo vo) throws Exception {
		return dao.selectListPhone(vo);
	}

	@Override
	public List<Durian> selectListEmail(DurianVo vo) throws Exception {
		return dao.selectListEmail(vo);
	}

	@Override
	public int insert(Durian dto) throws Exception {

		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());

		dao.insert(dto);
		dao.insertAddress(dto);
		dao.insertJoinQna(dto);
		dao.insertNation(dto);

		for (int i = 0; i < dto.getOympNumberArray().length; i++) {
			dto.setOympDefaultNy(dto.getOympDefaultNyArray()[i]);
			dto.setOympTelecomCd(dto.getOympTelecomCdArray()[i]);
			dto.setOympNumber(dto.getOympNumberArray()[i]);
			dao.insertPhone(dto);
		}

		for (int i = 0; i < dto.getOymeEmailAccountArray().length; i++) {
			dto.setOymeDefaultNy(dto.getOymeDefaultNyArray()[i]);
			dto.setOymeEmailDomainCd(dto.getOymeEmailDomainCdArray()[i]);
			dto.setOymeEmailAccount(dto.getOymeEmailAccountArray()[i]);
			dao.insertEmail(dto);
		}

		return 2;
	}

	@Override
	public Durian selectOne(DurianVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public Durian selectOneLogin(Durian dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	@Override
	public Durian selectOneId(Durian dto) throws Exception {
		return dao.selectOneId(dto);
	}

	@Override
	public int update(Durian dto) throws Exception {

		dto.setModDateTime(UtilDateTime.nowDate());

		dao.update(dto);
		dao.updateAddress(dto);
		dao.updateJoinQna(dto);
		dao.updateNation(dto);

		for (int i = 0; i < dto.getOympNumberArray().length; i++) {
			dto.setOympDefaultNy(dto.getOympDefaultNyArray()[i]);
			dto.setOympTelecomCd(dto.getOympTelecomCdArray()[i]);
			dto.setOympNumber(dto.getOympNumberArray()[i]);
			dao.updatePhone(dto);
		}

		for (int i = 0; i < dto.getOymeEmailAccountArray().length; i++) {
			dto.setOymeDefaultNy(dto.getOymeDefaultNyArray()[i]);
			dto.setOymeEmailDomainCd(dto.getOymeEmailDomainCdArray()[i]);
			dto.setOymeEmailAccount(dto.getOymeEmailAccountArray()[i]);
			dao.updateEmail(dto);
		}

		return 2;
	}

	@Override
	public int selectOneCount(DurianVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int uelete(DurianVo vo) throws Exception {
		return dao.uelete(vo);

	}

	@Override
	public int delete(DurianVo vo) throws Exception {
		return dao.delete(vo);

	}

}