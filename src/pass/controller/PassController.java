package pass.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/pass")
public class PassController {

	// �հ��ı� ����
	@RequestMapping("/")
	public ModelAndView pass(){
		ModelAndView mav = new ModelAndView("/menu/community/pass/pass.jsp");
		mav.addObject("menu", "pass");
		mav.addObject("hMenu", "hCommunity");
		return mav;
	}
}
