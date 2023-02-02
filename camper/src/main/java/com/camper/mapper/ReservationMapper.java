package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.camper.domain.RsrvVO;

@Mapper
@Repository
public interface ReservationMapper {
	
	List<RsrvVO> getAllReservation();
	
	void removeReservation(int rid);
}
