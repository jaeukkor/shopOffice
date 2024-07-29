package com.shop.supplier.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.supplier.service.SupplierOrderGoodsService;
import com.shop.table.vo.GoodsInfoVO;
import com.shop.table.vo.SupplierInfoVO;
import com.shop.table.vo.SupplierOrderVO;

@Controller
public class SupplierOderGoodsController {
		
	@Autowired
		SupplierOrderGoodsService service;
	
	@RequestMapping("/supplier/ordergoods")
	public String list() throws Exception {
		return "supplier/ordergoods";
	}
	

	@RequestMapping("/supplier/searchList")
	@ResponseBody
	public List<SupplierOrderVO> suppSearch(@ModelAttribute("SupplierOrderVO") SupplierOrderVO vo) throws Exception {
		List<SupplierOrderVO> list = service.selectSuppList(vo);
		
		return list;
	}
	@RequestMapping("/supplier/supplierOrder")
	@ResponseBody
	public SupplierOrderVO supOrder(@ModelAttribute("SupplierOrderVO") SupplierOrderVO vo) throws Exception {
		vo = service.selectOrderList(vo);
		
		List<SupplierOrderVO> goodslist = service.odaList(vo);
		//거래중인 상품들을 goodslist라고 할거다.
		vo.setGoodslist(goodslist);
		//거래중인 상품들을 goodslist 에 세팅할거다.
		List<GoodsInfoVO> suppliergoodslist = service.selectGoodsInfoList(vo);
		
		vo.setSuppliergoodslist(suppliergoodslist);
		
		return vo;
	}
	
	
	
	@RequestMapping("/supplier/supplierList")
	@ResponseBody
	public List<SupplierInfoVO> supplierList() throws Exception {
		List<SupplierInfoVO> list = service.selectSupplierInfoList();
		
		return list;
	}
	
	
	@RequestMapping("/supplier/upoda")
	@ResponseBody
	public int upoda(@ModelAttribute("SupplierOrderVO") SupplierOrderVO vo) throws Exception {
		int c = 0;
		if(vo.getTextt().equals("U")) {			//수정
			
			service.deletGoodsList(vo);
			//service.deleteOrderList(vo);
			//service.insertSupplierList(vo);.
			
			c = service.insertOrderGoodsList(vo);		  //supplier_goods
			
			
		}else if (vo.getTextt().equals("I")) {	//신규
			String orderNo = service.selectNewOrderNo();
			vo.setOrderNo(orderNo);
			service.insertSupplierList(vo);        //supplier_goods
			c = service.insertOrderGoodsList(vo);  //supplier_order 
				  
		
		}
		
		return c;
	
	
	}
	
	@RequestMapping("supplier/ssuplierLists")
	@ResponseBody
	public SupplierOrderVO ssuplierLists(@ModelAttribute("SupplierOrderVO") SupplierOrderVO vo) throws Exception {
		vo = service.selectssuplierList(vo);
		List<GoodsInfoVO> suppliergoodslist = service.selectGoodsInfoList(vo);
		
		vo.setSuppliergoodslist(suppliergoodslist);
		return vo;
}
}
