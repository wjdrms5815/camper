package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.camper.domain.MyPageVO;

@Mapper
@Repository
public interface MyPageMapper {
	
	MyPageVO getMyPage();
	
}
