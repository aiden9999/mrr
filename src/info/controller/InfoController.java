package info.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/info")
public class InfoController {
	
	// �̷��� �Ұ�
	@RequestMapping("/intro")
	public ModelAndView intro(){
		ModelAndView mav = new ModelAndView("/menu/mrr/intro/intro.jsp")	;
		mav.addObject("menu", "intro");
		mav.addObject("hMenu", "hInfo");
		return mav;
	}
	
	// �̷��� Ȱ��
//	@RequestMapping("/activity")
//	public ModelAndView activity(){
//		ModelAndView mav = new ModelAndView("/menu/mrr/activity/activity.jsp");
//		mav.addObject("menu", "activity");
//		mav.addObject("hMenu", "hInfo");
//		return mav;
//	}
	
	// ��������
	@RequestMapping("/professor")
	public ModelAndView professor(){
		ModelAndView mav = new ModelAndView("/menu/mrr/professor/professor.jsp");
		mav.addObject("menu", "professor");
		mav.addObject("hMenu", "hInfo");
		return mav;
	}
	
	// ���ô±�
	@RequestMapping("/contact")
	public ModelAndView contact(){
		ModelAndView mav = new ModelAndView("/menu/mrr/contact/contact.jsp");
		mav.addObject("menu", "contact");
		mav.addObject("hMenu", "hInfo");
		return mav;
	}
}
