package com.mycompany.myapp.modules.index;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class IndexController {




	@RequestMapping(value = "/index/indexView", method = RequestMethod.GET)
	public String indexView(Locale locale, Model model) {
		
		
		return "/index/indexView";
	}
}
