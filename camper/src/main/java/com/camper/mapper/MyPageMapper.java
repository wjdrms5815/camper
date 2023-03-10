package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.camper.domain.MyPageVO;

@Mapper
@Repository
public interface MyPageMapper {
	
	MyPageVO getMyPage(String userId);
	
	public void updateMyPage(MyPageVO vo);
	
	int getMoney(@Param("userId") String userId);
	
	public void updateWallet(@Param("userId") String userId, @Param("finalMoney") int finalMoney);
}
