package com.zuo.service;

import com.zuo.pojo.Member;

public interface MemberService {

	//根据id查找
    public Member getMemberById(Integer userid);

    //查找所以member
    public Member getMembers();
    
    //添加一条数据
    public int insert(Member member);
}
