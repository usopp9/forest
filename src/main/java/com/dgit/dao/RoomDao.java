package com.dgit.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.dgit.model.Reservation;
import com.dgit.model.Room;

public interface RoomDao {
	public List<Room> selectByAll(HashMap hm);
	
	
	
	
	public List<Room> selectRoomByIdAll(Reservation reservation) throws SQLException;
	public Room selectRoomByNO(Reservation reservation) throws SQLException;
}
