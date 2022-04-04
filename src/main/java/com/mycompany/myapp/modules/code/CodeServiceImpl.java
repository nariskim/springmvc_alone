package com.mycompany.myapp.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;

	// codeGroup

	@Override
	public List<Code> selectListGroup(CodeVo vo) throws Exception {
		return dao.selectListGroup(vo);
	}

	@Override
	public int insertGroup(Code dto) throws Exception {
		// oycgName, oycdName, oycgSeq
//		dao.insert(dto);	//	oycgName, oycdName

		return dao.insertGroup(dto);
	}

	@Override
	public Code selectOneGroup(CodeVo vo) throws Exception {

		return dao.selectOneGroup(vo);
	}

	@Override
	public int updateGroup(Code dto) throws Exception {
		return dao.updateGroup(dto);

	}

	@Override
	public int updateGroupDelete(CodeVo vo) throws Exception {
		return dao.updateGroupDelete(vo);

	}

	@Override
	public int deleteGroup(CodeVo vo) throws Exception {
		return dao.deleteGroup(vo);

	}

	@Override
	public int selectOneGroupCount(CodeVo vo) throws Exception {

		return dao.selectOneGroupCount(vo);
	}

	// code

	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {

		return dao.selectList(vo);
	}

	@Override
	public int insert(Code dto) throws Exception {
		dao.insertGroup(dto);
		dao.insert(dto);
		return 1;
	}

	@Override
	public Code selectOne(CodeVo vo) throws Exception {

		return dao.selectOne(vo);
	}

	@Override
	public int update(Code dto) throws Exception {
		return dao.update(dto);

	}

	@Override
	public int delete(CodeVo vo) throws Exception {
		return dao.delete(vo);

	}

	@Override
	public int selectOneCount(CodeVo vo) throws Exception {

		return dao.selectOneCount(vo);
	}

	@PostConstruct
	public void selectListForCache() {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListForCache();

		Code.cachedCodeArrayList.clear();
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList:" + Code.cachedCodeArrayList.size() + "chached !");
	}

	public static List<Code> selectListCachedCode(String oycgSeq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for (Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getOycgSeq().equals(oycgSeq)) {
				rt.add(codeRow);
			} else {

			}
		}
		return rt;
	}

}