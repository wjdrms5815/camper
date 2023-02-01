package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.camper.domain.QuestionVO;

@Mapper
@Repository
public interface QuestionMapper {
	
	List<QuestionVO> getQuestion();
}
