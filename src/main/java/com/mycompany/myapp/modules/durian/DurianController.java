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
		
		/*
		 * vo.setScOptionDate(vo.getScOptionDate() == null ? 1 : vo.getScOptionDate());
		 * vo.setScDateStart(vo.getScDateStart() == null ?
		 * UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(),
		 * Constants.DATE_INTERVAL) : UtilDateTime.addStringTime(vo.getScDateStart()));
		 * vo.setScDateEnd(vo.getScDateEnd() == null ? UtilDateTime.nowString() :
		 * UtilDateTime.addStringTime(vo.getScDateEnd()));
		 */
		
		vo.setScDateStart(vo.getScDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.addStringTime(vo.getScDateStart()));
		vo.setScDateEnd(vo.getScDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addStringTime(vo.getScDateEnd()));

		vo.setParamsPaging(service.selectOneCount(vo));

		
		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);
		
		// count 가 0 이 아니면 list 가져오는 부분 수행 후 model 개쳋에 담기
		if (count != 0) {
			List<Durian> list = service.selectList(vo);
			model.addAttribute("list", list);

		} else {
			//by pas
		}



		return "durian/durianList";
	}

	@RequestMapping(value = "/durian/durianForm")
	public String durianForm(@ModelAttribute("vo") DurianVo vo, Model model) throws Exception {
		System.out.println("############################");
		System.out.println("getScOymbDelNy() : "+vo.getScOymbDelNy());
		System.out.println("getScOption() : "+vo.getScOption());	
		System.out.println("getScValue() : "+vo.getScValue());		
		System.out.println("getThisPage() : "+vo.getThisPage());	
		System.out.println("############################");
		
		model.addAttribute("codeGender", DurianServiceImpl.selectListCachedCode("2"));
		model.addAttribute("codeJoinQna", DurianServiceImpl.selectListCachedCode("6"));
		model.addAttribute("codeTelecom", DurianServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmail", DurianServiceImpl.selectListCachedCode("11"));
		model.addAttribute("codeGrade", DurianServiceImpl.selectListCachedCode("19"));
		return "durian/durianForm";
	}

	@RequestMapping(value = "/durian/durianInst")
	public String durianInst(Durian dto, DurianVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		service.insertJoinQna(dto);
		service.insertNation(dto);
		service.insertAddress(dto);
		
//		service.insertPhone(dto);
//		service.insertEmail(dto);
		List<Durian> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		List<Durian> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);
		model.addAttribute("codeGender", DurianServiceImpl.selectListCachedCode("2"));
		model.addAttribute("codeJoinQna", DurianServiceImpl.selectListCachedCode("6"));
		model.addAttribute("codeTelecom", DurianServiceImpl.selectListCachedCode("9"));
		model.addAttribute("codeEmail", DurianServiceImpl.selectListCachedCode("11"));
		model.addAttribute("codeGrade", DurianServiceImpl.selectListCachedCode("19"));

		vo.setOymbSeq(dto.getOymbSeq());

		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/durian/durianView";
	}
	
	@RequestMapping(value = "/durian/durianView")
	public String durianView(@ModelAttribute("vo") DurianVo vo, Model model ) throws Exception {
		
		System.out.println("############################");
		System.out.println("View: getScOymbDelNy() : "+vo.getScOymbDelNy());
		System.out.println("View: getScOption() : "+vo.getScOption());	
		System.out.println("View: getScValue() : "+vo.getScValue());		
		System.out.println("View: getThisPage() : "+vo.getThisPage());		
		System.out.println("View: getOymbSeq() : "+vo.getOymbSeq());		
		System.out.println("View: getScOptionDate() : "+vo.getScOptionDate());		
		System.out.println("View: getScDateStart() : "+vo.getScDateStart());		
		System.out.println("View: getScDateEnd() : "+vo.getScDateEnd());		
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
		model.addAttribute("codeGrade", DurianServiceImpl.selectListCachedCode("19"));
	
		
		return "durian/durianView";
	}

	@RequestMapping(value = "/durian/durianEdit")
	public String durianEdit(@ModelAttribute("vo") DurianVo vo, Model model) throws Exception {
		System.out.println("############################");
		System.out.println("Edit: getScOymbDelNy() : "+vo.getScOymbDelNy());
		System.out.println("Edit: getScOption() : "+vo.getScOption());	
		System.out.println("Edit: getScValue() : "+vo.getScValue());		
		System.out.println("Edit: getThisPage() : "+vo.getThisPage());		
		System.out.println("Edit: getOymbSeq() : "+vo.getOymbSeq());		
		System.out.println("Edit: getScOptionDate() : "+vo.getScOptionDate());		
		System.out.println("Edit: getScDateStart() : "+vo.getScDateStart());		
		System.out.println("Edit: getScDateEnd() : "+vo.getScDateEnd());		
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
		model.addAttribute("codeGrade", DurianServiceImpl.selectListCachedCode("19"));
		
		
		return "durian/durianEdit";
	}
	
	@RequestMapping(value = "/durian/durianUpdt")
	public String durianUpdt(@ModelAttribute("vo") Durian dto, DurianVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.update(dto);
		service.updateJoinQna(dto);
		service.updateNation(dto); 
//		service.updatePhone(dto);
//		service.updateEmail(dto);
		

		vo.setOymbSeq(dto.getOymbSeq());

		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/durian/durianView";
	}
	@RequestMapping(value = "/durian/durianFelete")
	public String DurianFelete(DurianVo vo,  RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(vo);
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
	
	@RequestMapping(value = "/durian/multiUele")
	public String multiUele(DurianVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setOymbSeq(checkboxSeq);
			service.uelete(vo);
		}
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		return "redirect:/durian/durianList";
	}



@RequestMapping(value = "memberMultiDele")
public String memberMultiDele(DurianVo vo, RedirectAttributes redirectAttributes) throws Exception {
	
	String[] checkboxSeqArray = vo.getCheckboxSeqArray();
	
	for(String checkboxSeq : checkboxSeqArray) {
		vo.setOymbSeq(checkboxSeq);
//		service.delete(vo);
	}
	
	
	redirectAttributes.addFlashAttribute("vo", vo);
	
	
	return "redirect:/durian/durianList";
}

}
