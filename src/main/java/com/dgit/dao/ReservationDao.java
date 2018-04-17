package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.Reservation;
import com.dgit.model.ReservationRoom;

public interface ReservationDao {
	
	public List<Reservation> selectReservationByIdCount(int res_his) throws SQLException;
	
	public List<Reservation> selectRoomByNo(Reservation reservation) throws SQLException;
	
	public Reservation selectReservationinquiryById(String res_no) throws SQLException;
	
	public int deleteByNoId(Reservation reservation) throws SQLException;
	
	public int updateReshis(Reservation reservation) throws SQLException;
	
	
	public List<ReservationRoom> selectById(ReservationRoom reservationroom) throws SQLException;
}
