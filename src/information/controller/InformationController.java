package information.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/information")
public class InformationController {

	// 입시정보 / 의치한
	@RequestMapping("/doctor")
	public ModelAndView doctor(){
		ModelAndView mav = new ModelAndView("/menu/information/doctor/doctor.jsp");
		mav.addObject("menu", "doctor");
		mav.addObject("hMenu", "hInformation");
		return mav;
	}
	
	// 입시설명회
	@RequestMapping("/explan")
	public ModelAndView explan(){
		ModelAndView mav = new ModelAndView("/menu/information/explan/explan.jsp");
		mav.addObject("menu", "explan");
		mav.addObject("hMenu", "hInformation");
		return mav;
	}
	
	// 서울대 면접대비
	@RequestMapping("/seoul")
	public ModelAndView seoul(){
		ModelAndView mav = new ModelAndView("/menu/information/seoul/seoul.jsp");
		mav.addObject("menu", "seoul");
		mav.addObject("hMenu", "hInformation");
		return mav;
	}
	
	// 심층논술면접
	@RequestMapping("/essay")
	public ModelAndView essay(){
		ModelAndView mav = new ModelAndView("/menu/information/essay/essay.jsp");
		mav.addObject("menu", "essay");
		mav.addObject("hMenu", "hInformation");
		return mav;
	}
	
	// 입시정보
	@RequestMapping("/informat")
	public ModelAndView info(){
		ModelAndView mav = new ModelAndView("redirect:/informat");
		mav.addObject("menu", "informat");
		mav.addObject("hMenu", "hInformation");
		return mav;
	}
}
