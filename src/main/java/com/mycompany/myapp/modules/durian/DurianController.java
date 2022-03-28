package com.mycompany.myapp.modules.durian;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.myapp.common.constants.Constants;
import com.mycompany.myapp.common.util.UtilDateTime;

@Controller
public class DurianController {

	@Autowired
	DurianServiceImpl service;

	@RequestMapping(value = "/durian/durianList")
	public String durianList(@ModelAttribute("vo") DurianVo vo, Model model) throws Exception {
		
		vo.setScOptionDate(vo.getScOptionDate() == null ? 1 : vo.getScOptionDate());
		vo.setScDateStart(vo.getScDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getScDateStart());
		vo.setScDateEnd(vo.getScDateEnd() == null ? UtilDateTime.nowString() : vo.getScDateEnd());
		
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
	public String durianForm(@ModelAttribute("vo") DurianVo vo, Model model) throws Exception {
		System.out.println("############################");
		System.out.println("getScOymbDelNy() : "+vo.getScOymbDelNy());
		System.out.println("getScOymbName() : "+vo.getScOymbName());
		System.out.println("getScOption() : "+vo.getScOption());	
		System.out.println("getScValue() : "+vo.getScValue());		
		System.out.println("getThisPage() : "+vo.getThisPage());		
		/* System.out.println("vo.getOymbSeq() : "+vo.getOymbSeq()); */		
		System.out.println("############################");
		
		model.addAttribute("codeGender", DurianServiceImpl.selectListCachedCode("2"));
		model.addAttribute("codeJoinQna", DurianServiceImpl.selectListCachedCode("6"));
		model.addAttribute("codeTelecom", DurianServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmail", DurianServiceImpl.selectListCachedCode("11"));
		return "durian/durianForm";
	}

	@RequestMapping(value = "/durian/durianInst")
	public String durianInst(Durian dto, DurianVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("############################");	
		System.out.println("dto.getOymbSeq() : "+dto.getOymbSeq()); 		
		System.out.println("############################");
		service.insert(dto);
		service.insertJoinQna(dto);
//		service.insertNationG(dto);
//		service.insertNation(dto);
		service.insertPhone(dto);
		service.insertEmail(dto);
		System.out.println("############################");	
		System.out.println("vo.getOymbSeq() : "+vo.getOymbSeq()); 		
		System.out.println("############################");
		List<Durian> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		List<Durian> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);
		model.addAttribute("codeGender", DurianServiceImpl.selectListCachedCode("2"));
		model.addAttribute("codeJoinQna", DurianServiceImpl.selectListCachedCode("6"));
		model.addAttribute("codeTelecom", DurianServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmail", DurianServiceImpl.selectListCachedCode("11"));
		redirectAttributes.addAttribute("scOymbDelNy", vo.getScOymbDelNy());
		redirectAttributes.addAttribute("scOymbName", vo.getScOymbName());
		redirectAttributes.addAttribute("scOption", vo.getScOption());
		redirectAttributes.addAttribute("scValue", vo.getScValue());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("oymbSeq", vo.getOymbSeq());
		
		return "redirect:/durian/durianList";
	}
	
	@RequestMapping(value = "/durian/durianView")
	public String durianView(@ModelAttribute("vo") DurianVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		System.out.println("############################");
		System.out.println("getScOymbDelNy() : "+vo.getScOymbDelNy());
		System.out.println("getScOymbName() : "+vo.getScOymbName());
		System.out.println("getScOption() : "+vo.getScOption());	
		System.out.println("getScValue() : "+vo.getScValue());		
		System.out.println("getThisPage() : "+vo.getThisPage());		
		System.out.println("getOymbSeq() : "+vo.getOymbSeq());		
		System.out.println("############################");
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
		
		redirectAttributes.addAttribute("scOymbDelNy", vo.getScOymbDelNy());
		redirectAttributes.addAttribute("scOymbName", vo.getScOymbName());
		redirectAttributes.addAttribute("scOption", vo.getScOption());
		redirectAttributes.addAttribute("scValue", vo.getScValue());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		
		
		return "durian/durianView";
	}

	@RequestMapping(value = "/durian/durianEdit")
	public String durianEdit(@ModelAttribute("vo") DurianVo vo, Model model) throws Exception {
		System.out.println("############################");
		System.out.println("getScOymbDelNy() : "+vo.getScOymbDelNy());
		System.out.println("getScOymbName() : "+vo.getScOymbName());
		System.out.println("getScOption() : "+vo.getScOption());	
		System.out.println("getScValue() : "+vo.getScValue());		
		System.out.println("getThisPage() : "+vo.getThisPage());		
		System.out.println("getOymbSeq() : "+vo.getOymbSeq());		
		System.out.println("############################");
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
		
		
		return "durian/durianEdit";
	}
	
	@RequestMapping(value = "/durian/durianUpdt")
	public String durianUpdt(@ModelAttribute("vo") Durian dto, DurianVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		service.updateJoinQna(dto);
//		service.updateNationG(dto);
		service.updateNation(dto); 
		service.updatePhone(dto);
		service.updateEmail(dto);
		System.out.println("############################");	
		System.out.println("getOymbSeq() : "+vo.getOymbSeq()); 		
		System.out.println("############################");
		List<Durian> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		List<Durian> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);
		model.addAttribute("codeGender", DurianServiceImpl.selectListCachedCode("2"));
		model.addAttribute("codeJoinQna", DurianServiceImpl.selectListCachedCode("6"));
		model.addAttribute("codeTelecom", DurianServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmail", DurianServiceImpl.selectListCachedCode("11"));
		
		redirectAttributes.addAttribute("scOymbDelNy", vo.getScOymbDelNy());
		redirectAttributes.addAttribute("scOymbName", vo.getScOymbName());
		redirectAttributes.addAttribute("scOption", vo.getScOption());
		redirectAttributes.addAttribute("scValue", vo.getScValue());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("oymbSeq", vo.getOymbSeq());
		return "redirect:/durian/durianView";
	}
	@RequestMapping(value = "/durian/durianFelete")
	public String DurianFelete(DurianVo vo,  RedirectAttributes redirectAttributes) throws Exception {
		
		service.updateDelete(vo);
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("scOption", vo.getScOption());
		redirectAttributes.addAttribute("scValue", vo.getScValue());
		
		return "redirect:/durian/durianList";
	}
	
	@RequestMapping(value = "/durian/durianDelete")
	public String DurianDelete(DurianVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.delete(vo);
		
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("scOption", vo.getScOption());
		redirectAttributes.addAttribute("scValue", vo.getScValue());
		

		return "redirect:/durian/durianList";
	}

}
