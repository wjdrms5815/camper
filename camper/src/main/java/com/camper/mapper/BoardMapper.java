package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.camper.domain.BoardVO;
import com.camper.domain.MyPageVO;
import com.camper.domain.RsrvVO;

@Mapper
@Repository
public interface BoardMapper {
	//모든 게시물을 불러옴
	List<BoardVO> getAllCampInfo();
	
	//게시물 상세보기
	BoardVO getDetailCampInfo(Long cid);

	//예약하기
	public void goRsrv(RsrvVO rvo);
	
	//예약체크
	public void check(MyPageVO vo);
}
