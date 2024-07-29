package com.shop.order.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.OrderGoodsVO;
import com.shop.table.vo.OrderInfoVO;

@MapperScan(basePackages="com.shop.order.dao")
public interface OrderGoodsDao {

	public List<OrderInfoVO> selectOrderList(OrderInfoVO vo) throws Exception;
	
	public int updateOrderStatus(OrderInfoVO vo) throws Exception;
	
	
	
	
	public  OrderInfoVO selectOrderDetail(OrderInfoVO vo) throws Exception;
	
	
	
	public List<OrderGoodsVO> selectOrderGoodsList (OrderInfoVO vo) throws Exception;
	
}
