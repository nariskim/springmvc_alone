package com.mycompany.myapp.modules.login;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController {




	@RequestMapping(value = "/login/loginForm", method = RequestMethod.GET)
	public String loginForm(Locale locale, Model model) {
		
		
		return "/login/loginForm";
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "loginProc") public Map<String, Object>
	 * loginProc(Member dto, HttpSession httpSession) throws Exception { Map<String,
	 * Object> returnMap = new HashMap<String, Object>();
	 * 
	 * Member rtMember = service.selectOneLogin(dto);
	 * 
	 * if(rtMember != null) { // rtMember = service.selectOneLogin(dto);
	 * 
	 * if(rtMember.getIfmmSeq() != null) { httpSession.setMaxInactiveInterval( 60 *
	 * Constants.SESSION_MINUTE); //60second * 30 = 30minute //ref
	 * session.setMaxInactiveInterval(-1); // session time unlimited
	 * 
	 * httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
	 * httpSession.setAttribute("sessId", rtMember.getIfmmId());
	 * httpSession.setAttribute("sessName", rtMember.getIfmmName());
	 * 
	 * returnMap.put("rt", "success"); } else { returnMap.put("rt", "fail"); } }
	 * else { returnMap.put("rt", "fail"); } return returnMap; }
	 */
}
