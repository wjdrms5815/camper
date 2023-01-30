package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.camper.controller.dto.User;

@Mapper
public interface UserMapper {
	
	
    @Select("SELECT * FROM users")
    List<User> findAll();
    
    
    
}



