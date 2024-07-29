package com.shop.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.goods.dao.CategoryDao;
import com.shop.table.vo.GoodsInfoVO;


@Service
public class CategoryService {

	
	@Autowired
	CategoryDao dao;
	
	public List<GoodsInfoVO> selectGoodsList(GoodsInfoVO vo) throws Exception{
		return dao.selectGoodsList(vo);
	}
	public int updateCategory(GoodsInfoVO vo) throws Exception{
		return dao.updateCategory(vo);
	}
	
	public int insertCategory(GoodsInfoVO vo) throws Exception{
		return dao.insertCategory(vo);
	}
	
}
