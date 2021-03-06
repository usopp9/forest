package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.Reservation;
import com.dgit.model.ReservationRoom;

public interface ReservationDao {
	
	public List<Reservation> selectReservationByIdCount(ReservationRoom reservationroom2) throws SQLException;
	
	public List<Reservation> selectRoomByNo(Reservation reservation) throws SQLException;
	
	public Reservation selectReservationinquiryById(int res_no) throws SQLException;
	
	public int deleteByNoId(Reservation reservation) throws SQLException;
	
	public int updateReshis(Reservation reservation) throws SQLException;
	
	
	public List<ReservationRoom> selectById(ReservationRoom reservationroom) throws SQLException;
	
	public int updateCompleteDate(Reservation reservation) throws SQLException;
	
	public int updateResCancelDate(Reservation reservation) throws SQLException;
	
	public List<Reservation> selectReservationByAll() throws SQLException;
	
	public ReservationRoom selectReservationRoomById(ReservationRoom reser) throws SQLException;
	
	public int updateReservationById(Reservation reser) throws SQLException;
	
	public int deleteReservationByNo(int res_no) throws SQLException;
	
}
