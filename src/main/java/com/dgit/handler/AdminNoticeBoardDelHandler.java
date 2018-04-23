package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.NoticeBoardDao;
import com.dgit.util.MySqlSessionFactory;

public class AdminNoticeBoardDelHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session = null;

		if (req.getMethod().equalsIgnoreCase("get")) {

			try {
				session = MySqlSessionFactory.openSession();
				String nb_no = req.getParameter("nb_no");
				int snb_no = Integer.parseInt(nb_no);
				
				NoticeBoardDao noticeboardDao = session.getMapper(NoticeBoardDao.class);
				
				noticeboardDao.deleteNoticeBoard(snb_no);
				
				
				session.commit();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				session.close();
			}
			return "adminnoticeBoard.do";

		} else if (req.getMethod().equalsIgnoreCase("post")) {

			try {
				session = MySqlSessionFactory.openSession();

				
				
				
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				session.close();
			}
		}
		return null;
	}
}
