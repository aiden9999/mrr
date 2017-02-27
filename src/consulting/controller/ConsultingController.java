package consulting.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/consulting")
public class ConsultingController {

	// �������ı� ����
	@RequestMapping("/")
	public ModelAndView consulting(){
		ModelAndView mav = new ModelAndView("/menu/community/consulting/consulting.jsp");
		mav.addObject("menu", "consulting");
		mav.addObject("hMenu", "hCommunity");
		return mav;
	}
}
