package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.camper.domain.BoardVO;

@Mapper
@Repository
public interface BoardMapper {
	//모든 게시물을 불러옴
	List<BoardVO> getAllCampInfo();
	
	//게시물 상세보기
	BoardVO getDetailCampInfo(Long cid);

}
