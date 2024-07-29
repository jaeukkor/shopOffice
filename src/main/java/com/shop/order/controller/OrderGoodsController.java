package com.shop.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.order.service.OrderGoodsService;
import com.shop.table.vo.OrderGoodsVO;
import com.shop.table.vo.OrderInfoVO;

@Controller
public class OrderGoodsController {
	
	
	@Autowired
	OrderGoodsService service;
	
	@RequestMapping("/order/list")
	public String list() throws Exception {
		return "order/list";
	}
	
	
	
	@RequestMapping("/order/search")
	@ResponseBody
	public List<OrderInfoVO> orderSearch(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception {
		List<OrderInfoVO> list = service.selectOrderList(vo);
		
		return list;
	}
	
	
	@RequestMapping("/order/updateOrder")
	@ResponseBody
	public int updateOrder(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception {
		int c = service.updateOrderStatus(vo);
		
		
		return c;
		
	}
	
		
	
	
	@RequestMapping("/order/detailShow")
	@ResponseBody
	public  OrderInfoVO detailShow(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception {
		//주문서 정보
		vo = service.selectOrderDetail(vo);
		
		//상품정보 List
		List<OrderGoodsVO> list = service.selectOrderGoodsList(vo);
		
		vo.setGoodslist(list);
		
		return vo;
	}
	
	
	
}
