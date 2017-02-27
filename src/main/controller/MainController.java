package main.controller;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import activity.service.*;
import main.service.*;

@Controller
@RequestMapping("/")
public class MainController {
	@Autowired
	MainService ms;
	@Autowired
	ActivityService as;
	
	// ����
	@RequestMapping("/")
	public ModelAndView index(HttpSession session, HttpServletRequest req, HttpServletResponse resp){
		ModelAndView mav = new ModelAndView("/main/index.jsp");
		ms.check(session, req, resp);
		String ipSize = ms.visitIp(req);
		String todayVisit = ipSize.substring(0, ipSize.indexOf('/'));
		String totalVisit = ipSize.substring(ipSize.indexOf('/')+1);
		session.setAttribute("todayVisit", todayVisit);
		session.setAttribute("totalVisit", totalVisit);
		List<HashMap> activity = as.activityMain();
		for(int i=0; i<activity.size(); i++){
			HashMap map = activity.get(i);
			String s = map.get("content").toString();
			s = s.replaceAll("\r\n", "<br>");
			map.put("content", s);
			activity.set(i, map);
		}
		mav.addObject("activity", activity);
		return mav;
	}
	
	// �α��� ������ �̵�
	@RequestMapping("/login")
	public String login(){
		return "/member/login.jsp";
	}
	
	// ȸ������ ������ �̵�
	@RequestMapping("/join")
	public String join(){
		return "/member/join.jsp";
	}
	
	// ȸ������2 ������ �̵�
	@RequestMapping("/join2")
	public String join2(){
		return "/member/join2.jsp";
	}
	
	// �α���
	@RequestMapping("/login/{id}/{pw}/{autoLogin}/{saveId}")
	@ResponseBody
	public boolean login(@PathVariable(name="id")String id, @PathVariable(name="pw")String pw, @PathVariable(name="autoLogin")boolean autoLogin,
										@PathVariable(name="saveId")boolean saveId, HttpSession session, HttpServletRequest req, HttpServletResponse resp){
		return ms.login(id, pw, autoLogin, saveId, session, req, resp);
	}
	
	// �α׾ƿ�
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest req, HttpServletResponse resp){
		ms.logout(session, req, resp);
		return "redirect:/";
	}
	
	// Ŀ�´�Ƽ
	@RequestMapping("/community")
	public ModelAndView community(){
		ModelAndView mav = new ModelAndView("/menu/community/alliance/alliance.jsp");
		mav.addObject("menu", "alliance");
		mav.addObject("hMenu", "hCommunity");
		return mav;
	}
	
	// ���̵� / ��й�ȣ ã��
	@RequestMapping("/search")
	public String search(){
		return "/member/search.jsp";
	}
	
	// ������
	@RequestMapping("/info")
	public ModelAndView info(){
		ModelAndView mav = new ModelAndView("/member/info.jsp");
		String[] addr = {"����", "��õ", "����", "����", "�뱸", "����", "���", "�λ�", "��⵵", "������", "��û��", "����", "���", "���ֵ�"};
		mav.addObject("addr", addr);
		String[] phone = {"010", "011", "016", "017", "018", "019"};
		mav.addObject("phone", phone);
		mav.addObject("menu", "info");
		return mav;
	}
	
	// ���� �� ��
	@RequestMapping("/board")
	public ModelAndView board(){
		ModelAndView mav = new ModelAndView("/member/board.jsp");
		mav.addObject("menu", "board");
		return mav;
	}
	
	// ���� ��õ�� ��
	@RequestMapping("/recomend")
	public ModelAndView recomend(){
		ModelAndView mav = new ModelAndView("/member/recomend.jsp");
		mav.addObject("menu", "recomend");
		return mav;
	}
}
