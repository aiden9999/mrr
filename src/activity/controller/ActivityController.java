package activity.controller;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;
import org.springframework.web.servlet.*;

import activity.service.*;

@Controller
@RequestMapping("/info/activity")
public class ActivityController {
	@Autowired
	ActivityService as;
	
	// 활동 메인
	@RequestMapping("")
	public ModelAndView activity(){
		ModelAndView mav = new ModelAndView("/menu/mrr/activity/activity.jsp");
		mav.addObject("menu", "activity");
		mav.addObject("hMenu", "hInfo");
		List<HashMap> activity = as.activityList(0);
		for(int i=0; i<activity.size(); i++){
			HashMap map = activity.get(i);
			String s = map.get("content").toString();
			s = s.replaceAll("\r\n", "<br>");
			map.put("content", s);
			activity.set(i, map);
		}
		mav.addObject("activity", activity);
		int n = as.activityPage();
		mav.addObject("activityPage", n);
		mav.addObject("selectPage", 1);
		int start = 1>n ? n : 1;
		mav.addObject("start", start);
		int end = 10>n ? n : 10;
		mav.addObject("end", end);
		return mav;
	}
	
	// 글 보기
	@RequestMapping("/view/{num}")
	public ModelAndView view(@PathVariable(name="num")int num){
		ModelAndView mav = new ModelAndView("/menu/mrr/activity/view.jsp");
		mav.addObject("menu", "activity");
		mav.addObject("hMenu", "hInfo");
		HashMap view = as.activityView(num);
		mav.addObject("view", view);
		return mav;
	}
	
	// 글 쓰기
	@RequestMapping("/write")
	public ModelAndView write(){
		ModelAndView mav = new ModelAndView("/menu/mrr/activity/write.jsp");
		mav.addObject("menu", "activity");
		mav.addObject("hMenu", "hInfo");
		return mav;
	}
	
	// 글 쓰기 저장
	@RequestMapping("/writeSave")
	public ModelAndView write(@RequestParam(name="title")String title, @RequestParam(name="content")String content,
											@RequestParam(name="file1", required=false)MultipartFile file1,
											@RequestParam(name="file2", required=false)MultipartFile file2,
											@RequestParam(name="file3", required=false)MultipartFile file3,
											@RequestParam(name="file4", required=false)MultipartFile file4,
											@RequestParam(name="file5", required=false)MultipartFile file5,
											HttpSession session){
		ModelAndView mav = new ModelAndView("/menu/mrr/activity/activity.jsp");
		HashMap map1 = new HashMap();
		map1.put("uuid", "null");
		map1.put("fileName", "null");
		HashMap map2 = new HashMap();
		map2.put("uuid", "null");
		map2.put("fileName", "null");
		HashMap map3 = new HashMap();
		map3.put("uuid", "null");
		map3.put("fileName", "null");
		HashMap map4 = new HashMap();
		map4.put("uuid", "null");
		map4.put("fileName", "null");
		HashMap map5 = new HashMap();
		map5.put("uuid", "null");
		map5.put("fileName", "null");
		if(!file1.isEmpty()){
			map1 = as.fileUUID(file1, session);
		}
		if(!file2.isEmpty()){
			map2 = as.fileUUID(file2, session);
		}
		if(!file3.isEmpty()){
			map3 = as.fileUUID(file3, session);
		}
		if(!file4.isEmpty()){
			map4 = as.fileUUID(file4, session);
		}
		if(!file5.isEmpty()){
			map5 = as.fileUUID(file5, session);
		}
		boolean b = as.write(title, content, map1.get("uuid").toString(), map1.get("fileName").toString(),
										map2.get("uuid").toString(), map2.get("fileName").toString(),
										map3.get("uuid").toString(), map3.get("fileName").toString(),
										map4.get("uuid").toString(), map4.get("fileName").toString(),
										map5.get("uuid").toString(), map5.get("fileName").toString(), session);
		mav.addObject("b", b ? "y" : "n");
		mav.addObject("menu", "activity");
		mav.addObject("hMenu", "hInfo");
		List<HashMap> activity = as.activityList(0);
		for(int i=0; i<activity.size(); i++){
			HashMap map = activity.get(i);
			String s = map.get("content").toString();
			s = s.replaceAll("\r\n", "<br>");
			map.put("content", s);
			activity.set(i, map);
		}
		mav.addObject("activity", activity);
		int n = as.activityPage();
		mav.addObject("activityPage", n);
		mav.addObject("selectPage", 1);
		int start = 1+(int)((n-1)/10)*10;
		mav.addObject("start", start);
		int end = start+9>n? n: start+9;
		mav.addObject("end", end);
		return mav;
	}
	
	// 글 수정
	@RequestMapping("/modify/{num}")
	public ModelAndView modify(@PathVariable(name="num")int num){
		ModelAndView mav = new ModelAndView("/menu/mrr/activity/modify.jsp");
		HashMap map = as.modify(num);
		mav.addObject("map", map);
		mav.addObject("menu", "activity");
		mav.addObject("hMenu", "hInfo");
		return mav;
	}
	
	// 글 수정 저장
	@RequestMapping("/modifySave")
	public ModelAndView modifySave(@RequestParam(name="title")String title, @RequestParam(name="content")String content,
											@RequestParam(name="file1", required=false)MultipartFile file1,
											@RequestParam(name="file2", required=false)MultipartFile file2,
											@RequestParam(name="file3", required=false)MultipartFile file3,
											@RequestParam(name="file4", required=false)MultipartFile file4,
											@RequestParam(name="file5", required=false)MultipartFile file5,
											HttpSession session, @RequestParam(name="auto")int num){
		ModelAndView mav = new ModelAndView("/menu/mrr/activity/activity.jsp");
		HashMap map1 = new HashMap();
		map1.put("uuid", "null");
		map1.put("fileName", "null");
		HashMap map2 = new HashMap();
		map2.put("uuid", "null");
		map2.put("fileName", "null");
		HashMap map3 = new HashMap();
		map3.put("uuid", "null");
		map3.put("fileName", "null");
		HashMap map4 = new HashMap();
		map4.put("uuid", "null");
		map4.put("fileName", "null");
		HashMap map5 = new HashMap();
		map5.put("uuid", "null");
		map5.put("fileName", "null");
		if(!file1.isEmpty()){
			map1 = as.fileUUID(file1, session);
		}
		if(!file2.isEmpty()){
			map2 = as.fileUUID(file2, session);
		}
		if(!file3.isEmpty()){
			map3 = as.fileUUID(file3, session);
		}
		if(!file4.isEmpty()){
			map4 = as.fileUUID(file4, session);
		}
		if(!file5.isEmpty()){
			map5 = as.fileUUID(file5, session);
		}
		boolean b = as.modify(num, title, content, map1.get("uuid").toString(), map1.get("fileName").toString(),
										map2.get("uuid").toString(), map2.get("fileName").toString(),
										map3.get("uuid").toString(), map3.get("fileName").toString(),
										map4.get("uuid").toString(), map4.get("fileName").toString(),
										map5.get("uuid").toString(), map5.get("fileName").toString(), session);
		mav.addObject("b", b ? "y" : "n");
		mav.addObject("menu", "activity");
		mav.addObject("hMenu", "hInfo");
		List<HashMap> activity = as.activityList(0);
		for(int i=0; i<activity.size(); i++){
			HashMap map = activity.get(i);
			String s = map.get("content").toString();
			s = s.replaceAll("\r\n", "<br>");
			map.put("content", s);
			activity.set(i, map);
		}
		mav.addObject("activity", activity);
		int n = as.activityPage();
		mav.addObject("activityPage", n);
		mav.addObject("selectPage", 1);
		int start = 1+(int)((n-1)/10)*10;
		mav.addObject("start", start);
		int end = start+9>n? n: start+9;
		mav.addObject("end", end);
		return mav;
	}
	
	// 페이지 이동
	@RequestMapping("/page/{num}")
	public ModelAndView page(@PathVariable(name="num")int num){
		ModelAndView mav = new ModelAndView("/menu/mrr/activity/activity.jsp");
		mav.addObject("menu", "activity");
		mav.addObject("hMenu", "hInfo");
		List<HashMap> activity = as.activityList(num);
		for(int i=0; i<activity.size(); i++){
			HashMap map = activity.get(i);
			String s = map.get("content").toString();
			s = s.replaceAll("\r\n", "<br>");
			map.put("content", s);
			activity.set(i, map);
		}
		mav.addObject("activity", activity);
		int n = as.activityPage();
		mav.addObject("activityPage", n);
		mav.addObject("selectPage", num);
		int start = 1+(int)((num-1)/10)*10;
		mav.addObject("start", start);
		int end = start+9>n? n: start+9;
		mav.addObject("end", end);
		return mav;
	}
	
	// 글 삭제
	@RequestMapping("/remove/{num}")
	@ResponseBody
	public boolean remove(@PathVariable(name="num")int num){
		return as.remove(num);
	}
	
	// 파일 다운
	@RequestMapping("/down/{num}")
	public ModelAndView down(@PathVariable(name="num")int num){
		ModelAndView mav = new ModelAndView("fileDownService");
		mav.addObject("num", num);
		return mav;
	}
}
