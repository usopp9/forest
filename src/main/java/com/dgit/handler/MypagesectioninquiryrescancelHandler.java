package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ReservationDao;
import com.dgit.dao.RoomDao;
import com.dgit.model.Reservation;
import com.dgit.model.Room;
import com.dgit.util.MySqlSessionFactory;

public class MypagesectioninquiryrescancelHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub

		SqlSession session = null;
		if(req.getMethod().equalsIgnoreCase("get")){
			try {
				session = MySqlSessionFactory.openSession();
				
				String sres_no = req.getParameter("res_no");			
				String sr_no = req.getParameter("r_no");
				int r_no = Integer.parseInt(sr_no);
				
				ReservationDao reservationDao = session.getMapper(ReservationDao.class);
				RoomDao roomDao = session.getMapper(RoomDao.class);
				
				Reservation resrvation = new Reservation();
				resrvation.setR_no(r_no);
				resrvation.setRes_no(sres_no);
				
				
				Reservation list = reservationDao.selectReservationinquiryById(sres_no);
				Room room = roomDao.selectRoomByNO(resrvation);
				req.setAttribute("room", room);
				req.setAttribute("list", list);
				System.out.println(list);
				

			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				session.close();
			}
			return "WEB-INF/view/mypage_section_inquiry_rescancel.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			
			try{
				session = MySqlSessionFactory.openSession();
				String u_id = req.getParameter("u_id");
				String res_no = req.getParameter("res_no");			
				
				
				ReservationDao reservationDao = session.getMapper(ReservationDao.class);				
				
				Reservation reservation = new Reservation();
				reservation.setU_id(u_id);
				reservation.setRes_no(res_no);
				
				
				Reservation list = reservationDao.deleteByNoId(reservation);				
				
				req.setAttribute("list", list);
				
				
				session.commit();
				return "basket.do";
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				session.close();
			}
		}
		return null;
	}
}