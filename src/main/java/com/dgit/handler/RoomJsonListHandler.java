package com.dgit.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.RoomDao;
import com.dgit.model.Room;
import com.dgit.util.MySqlSessionFactory;

public class RoomJsonListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = MySqlSessionFactory.openSession();
		RoomDao dao = sqlSession.getMapper(RoomDao.class);
		String dis = req.getParameter("dis");
		String homepage = req.getParameter("homeList");
		String fac = req.getParameter("fac");
		String inwon = req.getParameter("inwon");
		String sStay = req.getParameter("stay");
		int stay = Integer.parseInt(sStay);
		String inYear = req.getParameter("inYear");
		String sInMonth = req.getParameter("inMonth");
		String sInDay = req.getParameter("inDay");
		int inDay = Integer.parseInt(sInDay);
		int inMonth = Integer.parseInt(sInMonth);
		List<String> dayList = new ArrayList<>();
		for(int i=0;i<stay;i++){
			dayList.add(inYear + "-" + (inMonth>9?inMonth:"0"+inMonth) + "-" + ((inDay+i)>9?inDay+i:"0"+(inDay+i)));
		}
		System.out.println(dayList);
		
		String[] arrFac = null;
		Map<String, Object> hm = new HashMap<>();
		List<String> homeList = setList(homepage);
		List<String> facList = new ArrayList<String>();
		
		arrFac = fac.split(",");

		for (int i = 0; i < arrFac.length; i++) {
			facList.add(arrFac[i]);
		}
		
		System.out.println(inwon);
		hm.put("dis", dis);
		hm.put("homepage", homeList);
		hm.put("arrFac", facList);
		hm.put("inwon", inwon);
		hm.put("dayList", dayList);

		List<Room> roomList = dao.selectByAll(hm);
		
		req.setAttribute("list", roomList);
		 
		// {"article":{"no":1, "id":test, "name":"정현락"}}...
		ObjectMapper om = new ObjectMapper();
		String json = om.writeValueAsString(roomList);
			 
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(json);
		out.flush();
		 
		sqlSession.close();
		 
		return null;
	}

	private List<String> setList(String homepage) {
		String[] arrHome;
		List<String> homeList = new ArrayList<String>();

		arrHome = homepage.split(",");

		for (int i = 0; i < arrHome.length; i++) {
			arrHome[i] = "%" + arrHome[i];
			homeList.add(arrHome[i]);
		}
		return homeList;
	}

}
