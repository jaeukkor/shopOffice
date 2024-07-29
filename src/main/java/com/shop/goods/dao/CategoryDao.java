package com.shop.goods.dao;


import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.GoodsInfoVO;

@MapperScan(basePackages="com.shop.goods.dao")
public interface CategoryDao {
	
	public List<GoodsInfoVO> selectGoodsList(GoodsInfoVO vo) throws Exception;
	
	
	
	public int updateCategory(GoodsInfoVO vo) throws Exception;
	
	public int insertCategory(GoodsInfoVO vo) throws Exception;
	
}
	
	
