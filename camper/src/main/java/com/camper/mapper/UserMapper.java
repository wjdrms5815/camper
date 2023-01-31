package com.camper.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.camper.domain.UserVO;

@Mapper
@Repository
public interface UserMapper {
	/* 이전에 직접 매핑
	 * @Select("SELECT * FROM users") List<User> findAll();
	 */
	
	/*xml에서 매핑한 id를 불러옴*/
	List<UserVO> getAllUser();
    
    
    
}



