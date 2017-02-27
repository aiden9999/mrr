package activity.service;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.ibatis.session.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.multipart.*;

@Component
public class ActivityService {
	@Autowired
	SqlSessionFactory fac;
	@Autowired
	ServletContext application;
	
	// 활동 메인 글 리스트
	public List<HashMap> activityList(int num){
		SqlSession ss = fac.openSession();
		List<HashMap> list = new Vector<>();
		if(num==0){
			list = ss.selectList("activity.activityList", 0);
		} else {
			list = ss.selectList("activity.activityList", (num-1)*9);
		}
		ss.close();
		return list;
	}

	// 글 보기
	public HashMap activityView(int num) {
		SqlSession ss = fac.openSession();
		HashMap map = ss.selectOne("activity.activityView", num);
		ss.close();
		return map;
	}

	// 첨부파일 uuid 생성 및 저장
	public HashMap<String, String> fileUUID(MultipartFile file, HttpSession session) {
		if(file.isEmpty()){
			return null;
		}
		try{
			String uuid = UUID.randomUUID().toString();
			String filename = uuid.substring(0,10);
			String fileDir = application.getRealPath("/activityFile");
			File f = new File(fileDir, filename);
			file.transferTo(f);
			SqlSession ss = fac.openSession();
			HashMap<String, String> map = new HashMap<>();
			map.put("id", ((HashMap)session.getAttribute("login")).get("id").toString());
			map.put("uuid", filename);
			map.put("fileName", file.getOriginalFilename());
			try{
				ss.insert("activity.fileUpload", map);
				ss.commit();
				ss.close();
				return map;
			} catch(Exception e){
				e.printStackTrace();
				ss.rollback();
				ss.close();
			}
			return map;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	// 활동 저장
	public boolean write(String title, String content, String uuid1, String fileName1, String uuid2, String fileName2,
										String uuid3, String fileName3, String uuid4, String fileName4,
										String uuid5, String fileName5, HttpSession session) {
		SqlSession ss = fac.openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("title", title);
		map.put("content", content);
		map.put("id", ((HashMap)session.getAttribute("login")).get("id").toString());
		map.put("nick", ((HashMap)session.getAttribute("login")).get("nick").toString());
		if(!uuid1.equals("null") && !fileName1.equals("null")){
			map.put("uuid1", uuid1);
			map.put("fileName1", fileName1);
		}
		if(!uuid2.equals("null") && !fileName2.equals("null")){
			map.put("uuid2", uuid2);
			map.put("fileName2", fileName2);
		}
		if(!uuid3.equals("null") && !fileName3.equals("null")){
			map.put("uuid3", uuid3);
			map.put("fileName3", fileName3);
		}
		if(!uuid4.equals("null") && !fileName4.equals("null")){
			map.put("uuid4", uuid4);
			map.put("fileName4", fileName4);
		}
		if(!uuid5.equals("null") && !fileName5.equals("null")){
			map.put("uuid5", uuid5);
			map.put("fileName5", fileName5);
		}
		try{
			ss.insert("activity.write", map);
			ss.commit();
			ss.close();
			return true;
		} catch(Exception e){
			e.printStackTrace();
			ss.rollback();
			ss.close();
			return false;
		}
	}

	// 활동 페이지
	public int activityPage() {
		SqlSession ss = fac.openSession();
		int n = ss.selectOne("activity.activityCount");
		ss.close();
		n = n%10==0 ? n/10 : n/10+1;
		return n;
	}

	// 글 수정
	public HashMap modify(int num) {
		SqlSession ss = fac.openSession();
		HashMap map = ss.selectOne("activity.activityView", num);
		ss.close();
		return map;
	}

	// 글 삭제
	public boolean remove(int num) {
		SqlSession ss = fac.openSession();
		int n = ss.delete("activity.delete", num);
		if(n>0){
			ss.commit();
			ss.close();
			return true;
		} else {
			ss.rollback();
			ss.close();
			return false;
		}
	}

	// 메인 활동 리스트
	public List<HashMap> activityMain() {
		SqlSession ss = fac.openSession();
		List<HashMap> list = ss.selectList("activity.activityMain");
		ss.close();
		return list;
	}

	// 글 수정
	public boolean modify(int auto, String title, String content, String uuid1, String fileName1, String uuid2, String fileName2,
										String uuid3, String fileName3, String uuid4, String fileName4,
										String uuid5, String fileName5, HttpSession session) {
		SqlSession ss = fac.openSession();
		HashMap map = new HashMap<>();
		map.put("auto", auto);
		map.put("title", title);
		map.put("content", content);
		map.put("id", ((HashMap)session.getAttribute("login")).get("id").toString());
		map.put("nick", ((HashMap)session.getAttribute("login")).get("nick").toString());
		if(!uuid1.equals("null") && !fileName1.equals("null")){
			map.put("uuid1", uuid1);
			map.put("fileName1", fileName1);
		}
		if(!uuid2.equals("null") && !fileName2.equals("null")){
			map.put("uuid2", uuid2);
			map.put("fileName2", fileName2);
		}
		if(!uuid3.equals("null") && !fileName3.equals("null")){
			map.put("uuid3", uuid3);
			map.put("fileName3", fileName3);
		}
		if(!uuid4.equals("null") && !fileName4.equals("null")){
			map.put("uuid4", uuid4);
			map.put("fileName4", fileName4);
		}
		if(!uuid5.equals("null") && !fileName5.equals("null")){
			map.put("uuid5", uuid5);
			map.put("fileName5", fileName5);
		}
		int n = ss.update("activity.modify", map);
		if(n>0){
			ss.commit();
			ss.close();
			return true;
		} else {
			ss.rollback();
			ss.close();
			return false;
		}
	}
}
