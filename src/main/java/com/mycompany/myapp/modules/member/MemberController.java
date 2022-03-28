package com.mycompany.myapp.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.myapp.common.util.UtilDateTime;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	


	@RequestMapping(value = "/member/memberList")
	public String memberList(Model model, MemberVo vo) throws Exception {

		
		System.out.println("UtilDateTime.nowLocalDateTime() : " + UtilDateTime.nowLocalDateTime());
		System.out.println("UtilDateTime.nowDate() : " + UtilDateTime.nowDate());
		System.out.println("UtilDateTime.nowString : " + UtilDateTime.nowString());
		

		
		List<Member> list = service.selectList();
		model.addAttribute("list", list);

		return "member/memberList";
	}

	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {

		return "member/memberForm";
	}

	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Member dto) throws Exception {

		service.insert(dto);
		dto.getOymbSeq();

		return "redirect:/member/memberView?oymbSeq=" + dto.getOymbSeq();
	}
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(MemberVo vo, Model model) throws Exception {

		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
	
		return "member/memberView";
	}

	@RequestMapping(value = "/member/memberEdit")
	public String memberEdit(MemberVo vo, Model model) throws Exception {

		Member rt = service.selectOne(vo);
	
		model.addAttribute("item", rt);

		return "member/memberEdit";
	}
	
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(Member dto) throws Exception {
		
		service.update(dto);
		
		return "redirect:/member/memberList";
	}
}
