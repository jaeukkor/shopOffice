package com.shop.supplier.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.supplier.service.SupplierInfoService;
import com.shop.table.vo.SupplierInfoVO;

@Controller
public class SupplierInfoController {
	
	@Autowired
	SupplierInfoService service;
	
	@RequestMapping("/supplier/list")
	public String list() throws Exception {
		return "supplier/list";
	}
	@RequestMapping("/supplier/search")
	@ResponseBody
	public List<SupplierInfoVO> supSearch(@ModelAttribute("SupplierInfoVO") SupplierInfoVO vo) throws Exception {
		List<SupplierInfoVO> list = service.selectSupList(vo);
		
		return list;
	}
	
	@RequestMapping("/supplier/supplierDetail")
	@ResponseBody
	public SupplierInfoVO supplierDetail(@ModelAttribute("SupplierInfoVO") SupplierInfoVO vo) throws Exception {
		vo = service.selectSupInfo(vo);
		
		return  vo;
	}
	@RequestMapping("/supplier/upSup")
	@ResponseBody
	public int upSup(@ModelAttribute("SupplierInfoVO") SupplierInfoVO vo) throws Exception {
		int c = 0;
		if(vo.getTextt().equals("U")) {
			c = service.updateSupplier(vo);
		}else if (vo.getTextt().equals("I")) {
			c = service.insertSupplier(vo);
		
		}return c;
	
	
	}
	
}
