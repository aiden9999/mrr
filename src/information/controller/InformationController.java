package information.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/information")
public class InformationController {

	// �Խ����� / ��ġ��
	@RequestMapping("/doctor")
	public ModelAndView doctor(){
		ModelAndView mav = new ModelAndView("/menu/information/doctor/doctor.jsp");
		mav.addObject("menu", "doctor");
		mav.addObject("hMenu", "hInformation");
		return mav;
	}
	
	// �Խü���ȸ
	@RequestMapping("/explan")
	public ModelAndView explan(){
		ModelAndView mav = new ModelAndView("/menu/information/explan/explan.jsp");
		mav.addObject("menu", "explan");
		mav.addObject("hMenu", "hInformation");
		return mav;
	}
	
	// ����� �������
	@RequestMapping("/seoul")
	public ModelAndView seoul(){
		ModelAndView mav = new ModelAndView("/menu/information/seoul/seoul.jsp");
		mav.addObject("menu", "seoul");
		mav.addObject("hMenu", "hInformation");
		return mav;
	}
	
	// �����������
	@RequestMapping("/essay")
	public ModelAndView essay(){
		ModelAndView mav = new ModelAndView("/menu/information/essay/essay.jsp");
		mav.addObject("menu", "essay");
		mav.addObject("hMenu", "hInformation");
		return mav;
	}
	
	// �Խ�����
	@RequestMapping("/informat")
	public ModelAndView info(){
		ModelAndView mav = new ModelAndView("redirect:/informat");
		mav.addObject("menu", "informat");
		mav.addObject("hMenu", "hInformation");
		return mav;
	}
}
