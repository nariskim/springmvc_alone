package com.mycompany.myapp.modules.durian;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.myapp.common.constants.Constants;
import com.mycompany.myapp.common.util.UtilDateTime;

@Controller
public class DurianController {

	@Autowired
	DurianServiceImpl service;

	@RequestMapping(value = "/durian/durianList")
	public String durianList(@ModelAttribute("vo") DurianVo vo, Model model) throws Exception {

		vo.setScDateStart(vo.getScDateStart() == null
				? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL)
				: UtilDateTime.addStringTime(vo.getScDateStart()));
		vo.setScDateEnd(
				vo.getScDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addStringTime(vo.getScDateEnd()));

		vo.setParamsPaging(service.selectOneCount(vo));

		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);

		// count 가 0 이 아니면 list 가져오는 부분 수행 후 model 개쳋에 담기
		if (count != 0) {
			List<Durian> list = service.selectList(vo);
			model.addAttribute("list", list);

		} else {
			// by pas
		}

		return "durian/durianList";
	}

	@RequestMapping(value = "/durian/durianForm")
	public String durianForm(@ModelAttribute("vo") DurianVo vo, Durian dto, Model model) throws Exception {

		
		List<Durian> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);

		List<Durian> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);

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

	    List<Durian> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);

		List<Durian> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);


		vo.setOymbSeq(dto.getOymbSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/durian/durianView";
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
		model.addAttribute("codeGrade", DurianServiceImpl.selectListCachedCode("19"));

		return "durian/durianView";
	}

	@RequestMapping(value = "/durian/durianEdit")
	public String durianEdit(@ModelAttribute("vo") DurianVo vo, Durian dto, Model model) throws Exception {

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
	public String durianUpdt(@ModelAttribute("vo") Durian dto, DurianVo vo, Model model, RedirectAttributes redirectAttributes)
			throws Exception {

		service.update(dto);

        List<Durian> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		List<Durian> list2 = service.selectListEmail(vo);
		model.addAttribute("listEmail", list2);
		
        vo.setOymbSeq(dto.getOymbSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/durian/durianView";
	}

	@RequestMapping(value = "/durian/durianFelete")
	public String DurianFelete(DurianVo vo, Durian dto, RedirectAttributes redirectAttributes)
			throws Exception {

		service.uelete(vo);

        vo.setOymbSeq(dto.getOymbSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/durian/durianList";
	}

	@RequestMapping(value = "/durian/durianDelete")
	public String DurianDelete(DurianVo vo, RedirectAttributes redirectAttributes)
			throws Exception {

		service.delete(vo);

		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/durian/durianList";
	}

	@RequestMapping(value = "/durian/multiUele")
	public String multiUele(DurianVo vo, Durian dto, RedirectAttributes redirectAttributes)
			throws Exception {

		String[] checkboxSeqArray = vo.getCheckboxSeqArray();

		for (String checkboxSeq : checkboxSeqArray) {
			vo.setOymbSeq(checkboxSeq);
			service.uelete(vo);
		}
		

		vo.setOymbSeq(dto.getOymbSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/durian/durianList";
	}

	@RequestMapping(value = "/durian/multiDele")
	public String memberMultiDele(DurianVo vo, RedirectAttributes redirectAttributes)
			throws Exception {

		String[] checkboxSeqArray = vo.getCheckboxSeqArray();

		for (String checkboxSeq : checkboxSeqArray) {
			vo.setOymbSeq(checkboxSeq);
		    service.delete(vo);
		}

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/durian/durianList";
	}

	@RequestMapping(value = "/durian/loginForm", method = RequestMethod.GET)
	public String loginForm(Locale locale, Model model) {

		return "/durian/loginForm";
	}

	@ResponseBody
	@RequestMapping(value = "/durian/loginProc")
	public Map<String, Object> loginProc(Durian dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Durian rtDurian = service.selectOneLogin(dto);

		if (rtDurian != null) {
			rtDurian = service.selectOneLogin(dto);
			if (rtDurian.getOymbSeq() != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
				
				httpSession.setAttribute("sessSeq", rtDurian.getOymbSeq());
				httpSession.setAttribute("sessId", rtDurian.getOymbId());
				httpSession.setAttribute("sessName", rtDurian.getOymbName());
				
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/durian/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

}
