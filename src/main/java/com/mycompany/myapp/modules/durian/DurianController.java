package com.mycompany.myapp.modules.durian;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.myapp.modules.code.CodeVo;


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

		model.addAttribute("codeGender", DurianServiceImpl.selectListCachedCode("2"));
		model.addAttribute("codeJoinQna", DurianServiceImpl.selectListCachedCode("6"));
		model.addAttribute("codeTelecom", DurianServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmail", DurianServiceImpl.selectListCachedCode("11"));
		return "durian/durianForm";
	}

	@RequestMapping(value = "/durian/durianInst")
	public String durianInst(Durian dto, CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);
		service.insertJoinQna(dto);
		service.insertNationG(dto);
		service.insertNation(dto);
		service.insertEmail(dto);
		redirectAttributes.addAttribute("oymbSeq", dto.getOymbSeq());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("scOption", vo.getScOption());
		redirectAttributes.addAttribute("scValue", vo.getScValue());
		
		return "redirect:/durian/durianList";
	}
	
	@RequestMapping(value = "/durian/durianView")
	public String durianView(@ModelAttribute("vo") DurianVo vo, Model model) throws Exception {

		Durian rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		List<Durian> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		List<Durian> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);
		model.addAttribute("codeGender", DurianServiceImpl.selectListCachedCode("2"));
		model.addAttribute("codeJoinQna", DurianServiceImpl.selectListCachedCode("6"));
		model.addAttribute("codeTelecom", DurianServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmail", DurianServiceImpl.selectListCachedCode("11"));
		
		
		return "durian/durianView";
	}

	@RequestMapping(value = "/durian/durianEdit")
	public String durianEdit(@ModelAttribute("vo") DurianVo vo, Model model) throws Exception {

		Durian rt = service.selectOne(vo);
	
		model.addAttribute("item", rt);
		model.addAttribute("codeGender", DurianServiceImpl.selectListCachedCode("2"));
		model.addAttribute("codeJoinQna", DurianServiceImpl.selectListCachedCode("6"));
		model.addAttribute("codeTelecom", DurianServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmail", DurianServiceImpl.selectListCachedCode("11"));
		return "durian/durianEdit";
	}
	
	@RequestMapping(value = "/durian/durianUpdt")
	public String durianUpdt(Durian dto, DurianVo vo) throws Exception {
		
		service.update(dto);
		
		return "redirect:/durian/durianList";
	}
	

}
