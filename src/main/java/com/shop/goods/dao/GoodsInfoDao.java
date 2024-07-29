package com.shop.goods.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.BoardInfoVO;
import com.shop.table.vo.GoodsInfoVO;
import com.shop.table.vo.SupplierInfoVO;

@MapperScan(basePackages="com.shop.goods.dao")
public interface GoodsInfoDao {

	public List<GoodsInfoVO> selectGoodsList(GoodsInfoVO vo) throws Exception;
	
	public List<GoodsInfoVO> selectSearchList(GoodsInfoVO vo) throws Exception;
	
	public List<SupplierInfoVO> selectSupplierList() throws Exception;
	
	public GoodsInfoVO selectDetail(GoodsInfoVO vo) throws Exception;
	
	public int updateGoods(GoodsInfoVO vo) throws Exception;
	
	public int insertGoods(GoodsInfoVO vo) throws Exception;
}
