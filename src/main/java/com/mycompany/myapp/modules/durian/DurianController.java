package com.mycompany.myapp.modules.durian;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DurianController {

	@Autowired
	DurianServiceImpl service;

	@RequestMapping(value = "/durian/durianList")
	public String durianList(@ModelAttribute("vo") DurianVo vo, Model model) throws Exception {

		// count 가져올 것
		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);
		
		// count 가 0 이 아니면 list 가져오는 부분 수행 후 model 개쳋에 담기
		if (count != 0) {
			List<Durian> list = service.selectList(vo);
			model.addAttribute("list", list);

		} else {
			//by pass
		}

		/*
		 * List<Code> list = service.selectListGroup(vo); model.addAttribute("list",
		 * list);
		 */

//		model.addAttribute("vo", vo); @ModelAttribute("vo")  이거 둘중하나 방법 선택
		return "durian/durianList";
	}
	


	@RequestMapping(value = "/durian/durianForm")
	public String durianForm(Model model) throws Exception {

		return "durian/durianForm";
	}

	@RequestMapping(value = "/durian/durianInst")
	public String durianInst(Model model, Durian dto) throws Exception {

		service.insert(dto);
		
		return "redirect:/durian/durianList";
	}
	
	@RequestMapping(value = "/durian/durianView")
	public String durianView(DurianVo vo, Model model) throws Exception {

		Durian rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
	
		return "durian/durianView";
	}

	@RequestMapping(value = "/durian/durianEdit")
	public String durianEdit(DurianVo vo, Model model) throws Exception {

		Durian rt = service.selectOne(vo);
	
		model.addAttribute("item", rt);

		return "durian/durianEdit";
	}
	
	@RequestMapping(value = "/durian/durianUpdt")
	public String durianUpdt(Durian dto) throws Exception {
		
		service.update(dto);
		
		return "redirect:/durian/durianList";
	}
	

}
