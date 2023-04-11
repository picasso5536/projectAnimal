package com.animal.www.home.model.service;

import com.animal.www.commons.vo.MemberVO;

public interface HomeService {
	
	public int getId(MemberVO vo);
	public int getnickname(MemberVO vo);
    public int getLogin(MemberVO vo); 
}