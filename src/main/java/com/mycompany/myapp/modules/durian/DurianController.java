package com.mycompany.myapp.modules.durian;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DurianController {

	@Autowired
	DurianServiceImpl service;

	@RequestMapping(value = "/member/memberList")
	public String memberList(Model model) throws Exception {

		List<Durian> list = service.selectList();
		model.addAttribute("list", list);

		return "member/memberList";
	}

	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {

		return "member/memberForm";
	}

	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Durian dto) throws Exception {

		service.insert(dto);

		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(DurianVo vo, Model model) throws Exception {

		Durian rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
	
		return "member/memberView";
	}

	@RequestMapping(value = "/member/memberEdit")
	public String memberEdit(DurianVo vo, Model model) throws Exception {

		Durian rt = service.selectOne(vo);
	
		model.addAttribute("item", rt);

		return "member/memberEdit";
	}
	
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(Durian dto) throws Exception {
		
		service.update(dto);
		
		return "redirect:/member/memberList";
	}
}
