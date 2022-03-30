package com.mycompany.myapp.modules.durian;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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
		
		
		/*try {
		 * //oymbEmail for(int i = 0; i< dto.getOymeEmailFullArray().length; i++) {
		 * dto.setOymeDefaultNy(dto.getOymeDefaultNyArray()[i]);
		 * dto.setOymeTypeCd(dto.getOymeTypeCdArray()[i]);
		 * dto.setOymeEmailFull(dto.getOymeEmailFullArray()[i]);
		 * dto.setOymeEmailAccount(dto.getOymeEmailAccountArray()[i]);
		 * dto.setOymeEmailDomain(dto.getOymeEmailDomainArray()[i]);
		 * dto.setOymeEmailDomainCd(dto.getOymeEmailDomainCdArray()[i]);
		 * dao.insertEmail(dto); }
		 * 
		 * //oymbPhone for(int i = 0; i< dto.getOympNumberArray().length; i++) {
		 * dto.setOympDefaultNy(dto.getOympDefaultNyArray()[i]);
		 * dto.setOympTypeCd(dto.getOympTypeCdArray()[i]);
		 * dto.setOympDeviceCd(dto.getOympDeviceCdArray()[i]);
		 * dto.setOympTelecomCd(dto.getOympTelecomCdArray()[i]);
		 * dto.setOympNumber(dto.getOympNumberArray()[i]); dao.insertPhone(dto); }
		 * 
		 * //oymbAddress for(int i = 0; i< dto.getOymaZipCodeArray().length; i++) {
		 * dto.setOymaDefaultNy(dto.getOymaDefaultNyArray()[i]);
		 * dto.setOymaTypeCd(dto.getOymaTypeCdArray()[i]);
		 * dto.setOymaTitle(dto.getOymaTitleArray()[i]);
		 * dto.setOymaAddress1(dto.getOymaAddress1Array()[i]);
		 * dto.setOymaAddress2(dto.getOymaAddress2Array()[i]);
		 * dto.setOymaAddress3(dto.getOymaAddress3Array()[i]);
		 * dto.setOymaZipCode(dto.getOymaZipCodeArray()[i]); dao.insertAddress(dto); }
		 return dao.insert(dto);
		} catch (Exception e) {
			throw new Exception();
		}*/
		
		return dao.insert(dto);
		
		
		
	}
	
	@Override
	public int insertJoinQna(Durian dto) throws Exception {
		return dao.insertJoinQna(dto);
	}
	
	@Override
	public int insertNation(Durian dto) throws Exception {
		return dao.insertNation(dto);
	}
	
	@Override
	public int insertAddress(Durian dto) throws Exception {
		return dao.insertAddress(dto);
	}
	/*
	 * @Override public int insertPhone(Durian dto) throws Exception { return
	 * dao.insertPhone(dto); }
	 * 
	 * @Override public int insertEmail(Durian dto) throws Exception { return
	 * dao.insertEmail(dto); }
	 */
	
	@Override
	public Durian selectOne(DurianVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Durian dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int updateJoinQna(Durian dto) throws Exception {
		return dao.updateJoinQna(dto);
	}

	 @Override 
	 public int updateNation(Durian dto) throws Exception { return
	  dao.updateNation(dto); 
	 }
	
	 
	/*
	 * @Override public int updatePhone(Durian dto) throws Exception { return
	 * dao.updatePhone(dto); }
	 * 
	 * @Override public int updateEmail(Durian dto) throws Exception { return
	 * dao.updateEmail(dto); }
	 */

	@Override
	public int selectOneCount(DurianVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public int uelete(DurianVo vo) throws Exception{
		return dao.uelete(vo);
		
	}
	
	@Override
	public int delete(DurianVo vo) throws Exception{
		return dao.delete(vo);
		
	}
	
	
	@PostConstruct
	public void selectListForCache() {
		List<Durian> codeListFromDb = (ArrayList<Durian>) dao.selectListForCache();
		 
		Durian.cachedCodeArrayList.clear();
		Durian.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList:" + Durian.cachedCodeArrayList.size() + "chached !");
	}
	

	public static List<Durian> selectListCachedCode(String oycgSeq) throws Exception {
		List<Durian> rt = new ArrayList<Durian>();
		for (Durian codeRow : Durian.cachedCodeArrayList) {
			if (codeRow.getOycgSeq().equals(oycgSeq)) {
				rt.add(codeRow);
			} else {

			}
		}
		return rt;
	}
	
}