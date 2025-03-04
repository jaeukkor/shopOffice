package com.shop.user.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.OrderInfoVO;
import com.shop.table.vo.UserInfoVO;

@MapperScan(basePackages="com.shop.user.dao")
public interface UserDao {

	//사용자 리스트
	public List<UserInfoVO> selectUserList(UserInfoVO vo) throws Exception;

	//사용자 한명
	public UserInfoVO selectUserInfo(UserInfoVO vo) throws Exception;
	
	//사용자 주문내역
	public List<OrderInfoVO> selectOrderList(UserInfoVO vo) throws Exception;
	
	public int selectTotalUserCount(UserInfoVO vo) throws Exception;
}
