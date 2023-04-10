package com.animal.www.home.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animal.www.commons.vo.MemberVO;

@Repository
public class HomeDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public int getId(MemberVO vo) {
		 int count = sqlSessionTemplate.selectOne("home.id",vo);
		    System.out.println("count is "+count);
		    return count > 0 ? 1 : 0;
	}

	public int getnickname(MemberVO vo) {
		int count = sqlSessionTemplate.selectOne("home.nickname",vo);
		System.out.println("count is "+count);
		return count > 0 ? 1 : 0;
	}
	
	/*
	 * public int getLogin(MemberVO vo) { return
	 * sqlSessionTemplate.selectOne("home.login", vo); }
	 */
}