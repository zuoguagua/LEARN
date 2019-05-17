package com.zuo.dao;

import com.zuo.pojo.Member;

public interface MemberDao {
	Member getMemberById(Integer id);
	
	Member selectMembers();
	
	int insert(Member member);
}
