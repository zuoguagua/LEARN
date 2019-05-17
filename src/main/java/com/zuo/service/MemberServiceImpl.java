package com.zuo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zuo.dao.MemberDao;
import com.zuo.pojo.Member;

@Transactional
@Service("memberService")
public class MemberServiceImpl implements MemberService{
	/**
     * 因为没有在spring的文件中显式的声明memberService实现类，直接通过getBean得到memberService 会找不到
     *  需要显式配置 @Service ("memeberService")，指定bean的名称
     *  相当与<bean id="memberService" class="com.jxust.ssm.service.impl.UserServiceImpl"></bean>
     */
	@Resource
	private MemberDao memberDao;
	@Override
	public Member getMemberById(Integer userid) {
		// TODO Auto-generated method stub
		return this.memberDao.getMemberById(userid);
	}

	@Override
	public Member getMembers() {
		// TODO Auto-generated method stub
		return this.memberDao.selectMembers();
	}

	@Override
	public int insert(Member member) {
		// TODO Auto-generated method stub
		return this.memberDao.insert(member);
	}

}
