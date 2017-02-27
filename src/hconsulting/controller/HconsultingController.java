package hconsulting.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@RequestMapping("/hconsulting")
public class HconsultingController {

	// �л��ΰ��� / ����������
	@RequestMapping("/depart")
	public ModelAndView depart(){
		ModelAndView mav = new ModelAndView("/menu/hconsulting/depart/depart.jsp");
		mav.addObject("menu", "depart");
		mav.addObject("hMenu", "hHconsulting");
		return mav;
	}
	
	// �񱳿� ����
	@RequestMapping("/compare")
	public ModelAndView compare(){
		ModelAndView mav = new ModelAndView("/menu/hconsulting/compare/compare.jsp");
		mav.addObject("menu", "compare");
		mav.addObject("hMenu", "hHconsulting");
		return mav;
	}

	// ���α׷�
	@RequestMapping("/program")
	public ModelAndView program(){
		ModelAndView mav = new ModelAndView("/menu/hconsulting/program/program.jsp");
		mav.addObject("menu", "program");
		mav.addObject("hMenu", "hHconsulting");
		return mav;
	}
}
