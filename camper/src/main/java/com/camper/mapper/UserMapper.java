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
	
	/*전체 유저*/
	List<UserVO> getAllUser();
    
	/*로그인*/
    public int loginOkay(String uid, String upw);
    
    /*회원가입*/
    public void signUpOkay(UserVO vo);
    
    /*아이디 비교*/
    public int idCheck(String id);
    public String getUid(String userId);
    
    /*아이디 찾기*/
    public UserVO findID(String uaddr, String ufirstname, String ulastname);
    
    /*비밀번호 찾기*/
    public UserVO findPWokay(String uid, String ufirstname, String ulastname, int qid, String uanswer);
    
}



