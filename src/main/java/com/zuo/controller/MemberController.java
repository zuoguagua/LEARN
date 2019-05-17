package com.zuo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zuo.pojo.Member;
import com.zuo.service.MemberService;

@Controller
public class MemberController {

	/**
     * 使用@Autowired也可以，@Autowired默认按类型装配
     * @Resource 默认按名称装配，当找不到与名称匹配的bean才会按类型装配。
     */
    @Resource 
    private MemberService memberService;
    /**
     * 测试查询
     * 
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("memberList")
    public String queryMemberList(Model model){
    	System.out.println("query");
    	Member member = memberService.getMembers();
    	model.addAttribute("member", member);
    	return "user/memberlist";
    }
    /**
     * 查询会员信息
     */
    @RequestMapping("memberInfo")
    public String queryMemberInfo(@RequestParam(value = "id") Integer id,Model model ){
    	Member member = memberService.getMemberById(id);
        model.addAttribute("member", member);
        return "user/memberlist";
    }
}
