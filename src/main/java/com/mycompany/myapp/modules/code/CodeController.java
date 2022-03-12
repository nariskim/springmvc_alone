package com.mycompany.myapp.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;

	@RequestMapping(value = "/code/codeGroupList")
	public String codeGroupList(Model model) throws Exception {

		List<Code> list = service.selectListGroup();
		model.addAttribute("list", list);

		return "code/codeGroupList";
	}

	@RequestMapping(value = "/code/codeGroupForm")
	public String codeGroupForm(Model model) throws Exception {

		return "code/codeGroupForm";
	}

	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Code dto, Model model) throws Exception {

		service.insertGroup(dto);

		return "redirect:/code/codeGroupList";
	}
	
	@RequestMapping(value = "/code/codeGroupView")
	public String codeGroupView(CodeVo vo, Model model) throws Exception {

		Code rt = service.selectOneGroup(vo);
		
		model.addAttribute("item", rt);
	
		return "code/codeGroupView";
	}

	@RequestMapping(value = "/code/codeGroupEdit")
	public String codeGroupEdit(CodeVo vo, Model model) throws Exception {

		Code rt = service.selectOneGroup(vo);
	
		model.addAttribute("item", rt);

		return "code/codeGroupEdit";
	}
	
	@RequestMapping(value = "/code/codeGroupUpdt")
	public String codeGroupUpdt(Code dto) throws Exception {
		
		service.updateGroup(dto);
		
		return "redirect:/code/codeGroupList";
	}
	
	@RequestMapping(value = "/code/codeList")
	public String codeList(Model model) throws Exception {
		
		List<Code> list = service.selectList();
		model.addAttribute("list", list);
		
		return "code/codeList";
	}
	
	@RequestMapping(value = "/code/codeForm")
	public String codeForm(Model model) throws Exception {
		
		return "code/codeForm";
	}
	
	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto, Model model) throws Exception {
		
		service.insert(dto);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "/code/codeView")
	public String codeView(CodeVo vo, Model model) throws Exception {
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "code/codeView";
	}
	
	@RequestMapping(value = "/code/codeEdit")
	public String codeEdit(CodeVo vo, Model model) throws Exception {
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "code/codeEdit";
	}
	
	@RequestMapping(value = "/code/codeUpdt")
	public String codeUpdt(Code dto) throws Exception {
		
		service.update(dto);
		
		return "redirect:/code/codeList";
	}
}