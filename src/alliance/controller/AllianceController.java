package alliance.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/alliance")
public class AllianceController {

	// 제휴안내 메인
	@RequestMapping("/")
	public ModelAndView alliance(){
		ModelAndView mav = new ModelAndView("/menu/community/alliance/alliance.jsp");
		mav.addObject("menu", "alliance");
		mav.addObject("hMenu", "hCommunity");
		return mav;
	}
}
