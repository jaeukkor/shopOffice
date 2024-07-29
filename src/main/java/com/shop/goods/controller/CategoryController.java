package com.shop.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.goods.service.CategoryService;
import com.shop.table.vo.GoodsInfoVO;

@Controller
public class CategoryController {

	
	@Autowired
	CategoryService service;
	
	@RequestMapping("/goods/category")
	public String list() throws Exception {
		return "goods/category";
	}
	@RequestMapping("/all/category")
	@ResponseBody
	public List<GoodsInfoVO> category(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception {
		List<GoodsInfoVO> list = service.selectGoodsList(vo);
		
		return list;
	}
	@RequestMapping("/change")
	@ResponseBody
	public int change(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo)throws Exception {
		int cnt = service.updateCategory(vo);
		return cnt;
		
		}
	
	
	@RequestMapping("/newCate")
	@ResponseBody
	public int newCate(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo)throws Exception {
		int cnt = service.insertCategory(vo);
		return cnt;
		
		}
	
	
	
}
