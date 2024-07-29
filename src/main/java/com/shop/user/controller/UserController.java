package com.shop.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.table.vo.OrderInfoVO;
import com.shop.table.vo.UserInfoVO;
import com.shop.user.service.UserService;
import com.shop.user.vo.UserVO;

@Controller

public class UserController {

	@Autowired
	UserService service;
	
	@RequestMapping("/user/list")
	public String list() throws Exception {
		return "user/list";
	}
	
	@RequestMapping("/user/searchlist")
	@ResponseBody
	public UserVO searchlist(@ModelAttribute("UserInfoVO") UserInfoVO vo) throws Exception {
		
		
		int totalPage = service.selectTotalUserCount(vo);
		
		List<UserInfoVO> list = service.selectUserList(vo);

		UserVO uservo = new UserVO();
		
		uservo.setUserlist(list);
		uservo.setTotal(totalPage); //총 데이터수.
		uservo.setStartPage(vo.getStartPage()); 
		uservo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return uservo;
	}
	
	
	
	
	@RequestMapping("/getDetail")
	@ResponseBody
	public UserInfoVO getDetail(@ModelAttribute("UserInfoVO") UserInfoVO vo) throws Exception {
		//1. 회원정보 가져오기
		vo  = service.selectUserInfo(vo);
		//Ctrl+shift+o : 임포트
		//2. 주문정보 가져오기
		List<OrderInfoVO> list = service.selectOrderList(vo);
		
		vo.setOrderlist(list);
		
		return vo;
	}
	
	
}
