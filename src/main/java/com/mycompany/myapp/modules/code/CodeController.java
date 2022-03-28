package com.mycompany.myapp.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {

	
	@Autowired
	CodeServiceImpl service;

	@RequestMapping(value = "/code/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {

		// count 가져올 것
		int count = service.selectOneGroupCount(vo);

		vo.setParamsPaging(count);
		
		// count 가 0 이 아니면 list 가져오는 부분 수행 후 model 개쳋에 담기
		if (count != 0) {
			List<Code> list = service.selectListGroup(vo);
			model.addAttribute("list", list);

		} else {
			//by pas
		}

		/*
		 * List<Code> list = service.selectListGroup(vo); model.addAttribute("list",
		 * list);
		 */

//		model.addAttribute("vo", vo); @ModelAttribute("vo")  이거 둘중하나 방법 선택
		return "code/codeGroupList";
	}

	@RequestMapping(value = "/code/codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeVo vo, Code dto) throws Exception {
		System.out.println("############################");
		System.out.println("Form.getScOycgDelNy() : " + vo.getScOycgDelNy());
		System.out.println("Form.getScOycgName() : " + vo.getScOycgName());
		System.out.println("Form.getScOption() : " + vo.getScOption());
		System.out.println("Form.getScValue() : " + vo.getScValue());
		System.out.println("Form.getThisPage() : " + vo.getThisPage());
		System.out.println("############################");
		return "code/codeGroupForm";
	}

	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Code dto, CodeVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("############################");
		System.out.println("Inst.getScOycgDelNy() : " + vo.getScOycgDelNy());
		System.out.println("Inst.getScOycgName() : " + vo.getScOycgName());
		System.out.println("Inst.getScOption() : " + vo.getScOption());
		System.out.println("Inst.getScValue() : " + vo.getScValue());
		System.out.println("Inst.getThisPage() : " + vo.getThisPage());		
		System.out.println("############################");
		service.insertGroup(dto);
		System.out.println("############################");
		System.out.println("Inst.getOycgSeq() : " + dto.getOycgSeq());
		System.out.println("############################");
		redirectAttributes.addAttribute("scOycgDelNy", vo.getScOycgDelNy());
		redirectAttributes.addAttribute("scOycgName", vo.getScOycgName());
		redirectAttributes.addAttribute("scOption", vo.getScOption());
		redirectAttributes.addAttribute("scValue", vo.getScValue());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("getOycgSeq", dto.getOycgSeq());
		return "redirect:/code/codeGroupView";
	}

	@RequestMapping(value = "/code/codeGroupView")
	public String codeGroupView(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		System.out.println("############################");
		System.out.println("View.getScOycgDelNy() : " + vo.getScOycgDelNy());
		System.out.println("View.getScOycgName() : " + vo.getScOycgName());
		System.out.println("View.getScOption() : " + vo.getScOption());
		System.out.println("View.getScValue() : " + vo.getScValue());
		System.out.println("View.getThisPage() : " + vo.getThisPage());
		System.out.println("View.getOycgSeq() : "+ vo.getOycgSeq());	
		System.out.println("############################");
		
		Code rt = service.selectOneGroup(vo);
		model.addAttribute("item", rt);

		
		return "code/codeGroupView";
	}

	@RequestMapping(value = "/code/codeGroupEdit")
	public String codeGroupEdit(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {

		Code rt = service.selectOneGroup(vo);

		model.addAttribute("item", rt);

		return "code/codeGroupEdit";
	}

	@RequestMapping(value = "/code/codeGroupUpdt")
	public String codeGroupUpdt(Code dto, CodeVo vo) throws Exception {

		service.updateGroup(dto);
		dto.getOycgSeq();
		

		return "redirect:/code/codeGroupView?oycgSeq=" + dto.getOycgSeq() + makeQueryString(vo);
	}
	
	@RequestMapping(value = "/code/codeGroupFelete")
	public String codeGroupFelete(CodeVo vo,  RedirectAttributes redirectAttributes) throws Exception {
		
		service.updateGroupDelete(vo);
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("scOption", vo.getScOption());
		redirectAttributes.addAttribute("scValue", vo.getScValue());
		
		return "redirect:/code/codeGroupList";
	}
	
	@RequestMapping(value = "/code/codeGroupDelete")
	public String codeGroupDelete(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.deleteGroup(vo);
		
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("scOption", vo.getScOption());
		redirectAttributes.addAttribute("scValue", vo.getScValue());
		

		return "redirect:/code/codeGroupList";
	}

	@RequestMapping(value = "/code/codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {

		// count 가져올 것
		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);
		
		// count 가 0 이 아니면 list 가져오는 부분 수행 후 model 개쳋에 담기
		if (count != 0) {
			List<Code> list = service.selectListGroup(vo);
			model.addAttribute("list", list);

		} else {
			//by pas
		}

		/*
		 * List<Code> list = service.selectListGroup(vo); model.addAttribute("list",
		 * list);
		 */

//		model.addAttribute("vo", vo); @ModelAttribute("vo")  이거 둘중하나 방법 선택
		return "code/codeList";
	}
	

	/* @RequestMapping(value = "/code/codeList")
	public String codeList(CodeVo vo, Model model) throws Exception {

		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);

		List<Code> listCodeGroup = service.selectListGroup(vo);
		model.addAttribute("listCodeGroup", listCodeGroup);

		return "code/codeList";
	}  */

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
	
	public String makeQueryString(CodeVo vo) {
		String tmp = "&thisPage=" + vo.getThisPage() 
					+ "&scOption=" + vo.getScOption() 
					+ "&scValue=" + vo.getScValue();
		return tmp;
	}
	
	@RequestMapping(value = "/code/codeDelete")
	public String codeDelete(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.delete(vo);
		
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("scOption", vo.getScOption());
		redirectAttributes.addAttribute("scValue", vo.getScValue());
		

		return "redirect:/code/codeList";
	}
	
}