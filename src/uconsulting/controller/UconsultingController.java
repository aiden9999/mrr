package uconsulting.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/uconsulting")
public class UconsultingController {

	// 대입컨설팅 / 수시합격전략
	@RequestMapping("/susi")
	public ModelAndView susi(){
		ModelAndView mav = new ModelAndView("/menu/uconsulting/susi/susi.jsp");
		mav.addObject("menu", "susi");
		mav.addObject("hMenu", "hUconsulting");
		return mav;
	}
	
	// 자기소개서
	@RequestMapping("/introduce")
	public ModelAndView introduce(){
		ModelAndView mav = new ModelAndView("/menu/uconsulting/introduce/introduce.jsp");
		mav.addObject("menu", "introduce");
		mav.addObject("hMenu", "hUconsulting");
		return mav;
	}
	
	// 면접
	@RequestMapping("/interview")
	public ModelAndView interview(){
		ModelAndView mav = new ModelAndView("/menu/uconsulting/interview/interview.jsp");
		mav.addObject("menu", "interview");
		mav.addObject("hMenu", "hUconsulting");
		return mav;
	}

	// 정시합격전략
	@RequestMapping("/jungsi")
	public ModelAndView jungsi(){
		ModelAndView mav = new ModelAndView("/menu/uconsulting/jungsi/jungsi.jsp");
		mav.addObject("menu", "jungsi");
		mav.addObject("hMenu", "hUconsulting");
		return mav;
	}

	// 재수생컨설팅
	@RequestMapping("/jesu")
	public ModelAndView jesu(){
		ModelAndView mav = new ModelAndView("/menu/uconsulting/jesu/jesu.jsp");
		mav.addObject("menu", "jesu");
		mav.addObject("hMenu", "hUconsulting");
		return mav;
	}
}
