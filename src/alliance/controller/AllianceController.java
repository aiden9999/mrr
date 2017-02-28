package alliance.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import alliance.service.*;

@Controller
@RequestMapping("/alliance")
public class AllianceController {
	@Autowired
	MailService ms;

	// 제휴안내 메인
	@RequestMapping("/")
	public ModelAndView alliance(){
		ModelAndView mav = new ModelAndView("/menu/community/alliance/alliance.jsp");
		mav.addObject("menu", "alliance");
		mav.addObject("hMenu", "hCommunity");
		return mav;
	}
	
	// 메일보내기
	@RequestMapping("/email/{name}/{phone}/{email}/{title}/{content}")
	@ResponseBody
	public boolean email(@PathVariable(name="name")String name, @PathVariable(name="phone")String phone, 
										@PathVariable(name="email")String email, @PathVariable(name="title")String title,
										@PathVariable(name="content")String content){
		return ms.mailSend(name, phone, email, title, content);
	}
}
