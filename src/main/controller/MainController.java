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
	
	// 메인
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
	
	// 로그인 페이지 이동
	@RequestMapping("/login")
	public String login(){
		return "/member/login.jsp";
	}
	
	// 회원가입 페이지 이동
	@RequestMapping("/join")
	public String join(){
		return "/member/join.jsp";
	}
	
	// 회원가입2 페이지 이동
	@RequestMapping("/join2")
	public String join2(){
		return "/member/join2.jsp";
	}
	
	// 로그인
	@RequestMapping("/login/{id}/{pw}/{autoLogin}/{saveId}")
	@ResponseBody
	public boolean login(@PathVariable(name="id")String id, @PathVariable(name="pw")String pw, @PathVariable(name="autoLogin")boolean autoLogin,
										@PathVariable(name="saveId")boolean saveId, HttpSession session, HttpServletRequest req, HttpServletResponse resp){
		return ms.login(id, pw, autoLogin, saveId, session, req, resp);
	}
	
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest req, HttpServletResponse resp){
		ms.logout(session, req, resp);
		return "redirect:/";
	}
	
	// 커뮤니티
	@RequestMapping("/community")
	public ModelAndView community(){
		ModelAndView mav = new ModelAndView("/menu/community/alliance/alliance.jsp");
		mav.addObject("menu", "alliance");
		mav.addObject("hMenu", "hCommunity");
		return mav;
	}
	
	// 아이디 / 비밀번호 찾기
	@RequestMapping("/search")
	public String search(){
		return "/member/search.jsp";
	}
	
	// 내정보
	@RequestMapping("/info")
	public ModelAndView info(){
		ModelAndView mav = new ModelAndView("/member/info.jsp");
		String[] addr = {"서울", "인천", "세종", "대전", "대구", "광주", "울산", "부산", "경기도", "강원도", "충청도", "전라도", "경상도", "제주도"};
		mav.addObject("addr", addr);
		String[] phone = {"010", "011", "016", "017", "018", "019"};
		mav.addObject("phone", phone);
		mav.addObject("menu", "info");
		return mav;
	}
	
	// 내가 쓴 글
	@RequestMapping("/board")
	public ModelAndView board(){
		ModelAndView mav = new ModelAndView("/member/board.jsp");
		mav.addObject("menu", "board");
		return mav;
	}
	
	// 내가 추천한 글
	@RequestMapping("/recomend")
	public ModelAndView recomend(){
		ModelAndView mav = new ModelAndView("/member/recomend.jsp");
		mav.addObject("menu", "recomend");
		return mav;
	}
}
