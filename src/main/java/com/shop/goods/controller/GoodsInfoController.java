package com.shop.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.goods.service.GoodsInfoService;
import com.shop.table.vo.BoardInfoVO;
import com.shop.table.vo.GoodsInfoVO;
import com.shop.table.vo.SupplierInfoVO;

@Controller
public class GoodsInfoController {
	
	@Autowired
	GoodsInfoService service;
	
	@RequestMapping("/goods/infolist")
	public String list() throws Exception {
		return "goods/infolist";
	}
	
	@RequestMapping("/categoryMenu")
	@ResponseBody
	public List<GoodsInfoVO> menu(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
		List<GoodsInfoVO> list = service.selectGoodsList(vo);
		
		return list;
	}
	
	//조회 버튼 누르는 거
	@RequestMapping("/searchList")
	@ResponseBody
	public List<GoodsInfoVO> searchList(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
		List<GoodsInfoVO> list = service.selectSearchList(vo);
		
		return list;
	}
	
	@RequestMapping("/goods/init")
	@ResponseBody
	public GoodsInfoVO init() throws Exception {
		//1.거래처 조회
		List<SupplierInfoVO> slist = service.selectSupplierList();
		
		//2. 카테고리 대분류
		GoodsInfoVO vo = new GoodsInfoVO();
		vo.setCtLevel("1");
		List<GoodsInfoVO> list = service.selectGoodsList(vo);
		
		GoodsInfoVO gvo  = new GoodsInfoVO();
		gvo.setSupplierlist(slist);
		gvo.setmCategorylist(list);
		
		return gvo;
	}
	
	@RequestMapping("/goods/getDetail")
	@ResponseBody
	public GoodsInfoVO getDetail(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
	
		 vo =  service.selectDetail(vo);
		 
		 //1. 소분류카테고리
		 List<GoodsInfoVO> sclist = service.selectGoodsList(vo); 
		 
		 //2. 중분류카테고리
		 vo.setCtLevel("2");
		 List<GoodsInfoVO> mclist = service.selectGoodsList(vo);
		 
		 vo.setSclist(sclist);
		 
		 vo.setMclist(mclist);
		 
	  return vo;
	  
	}
	@RequestMapping("/goods/goodsUpdate")
	@ResponseBody
	public int save(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo)throws Exception {
		int cnt = 0;
		if(vo.getTextt().equals("U")) {
			cnt = service.updateGoods(vo);
		}else if (vo.getTextt().equals("I")) {
			cnt = service.insertGoods(vo);
		
		}return cnt;
	
	
	}
	

}
