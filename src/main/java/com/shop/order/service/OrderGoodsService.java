package com.shop.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.order.dao.OrderGoodsDao;
import com.shop.table.vo.OrderGoodsVO;
import com.shop.table.vo.OrderInfoVO;
@Service
public class OrderGoodsService {

	
	@Autowired
	OrderGoodsDao dao;
	
	public List<OrderInfoVO> selectOrderList(OrderInfoVO vo) throws Exception{
		return dao.selectOrderList(vo);
	}
	
	public int updateOrderStatus(OrderInfoVO vo) throws Exception{
		return dao.updateOrderStatus(vo);
	}
	
	
	
	public  OrderInfoVO selectOrderDetail(OrderInfoVO vo) throws Exception{
		return dao.selectOrderDetail(vo);
	}
	
	
	public List<OrderGoodsVO> selectOrderGoodsList (OrderInfoVO vo) throws Exception{
		return dao.selectOrderGoodsList(vo);
	}
	
}
