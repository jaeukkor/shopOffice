package com.shop.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.goods.dao.GoodsInfoDao;
import com.shop.table.vo.BoardInfoVO;
import com.shop.table.vo.GoodsInfoVO;
import com.shop.table.vo.SupplierInfoVO;

@Service
public class GoodsInfoService {
	
	
	@Autowired
	GoodsInfoDao dao;
	
	public List<GoodsInfoVO> selectGoodsList(GoodsInfoVO vo) throws Exception{
		return dao.selectGoodsList(vo);
	}
	public List<GoodsInfoVO> selectSearchList(GoodsInfoVO vo) throws Exception{
		return dao.selectSearchList(vo);
	}
	
	public List<SupplierInfoVO> selectSupplierList() throws Exception{
		return dao.selectSupplierList();
	}
	public GoodsInfoVO selectDetail(GoodsInfoVO vo) throws Exception{
		return dao.selectDetail(vo);
	}
	
	public int updateGoods(GoodsInfoVO vo) throws Exception{
		return dao.updateGoods(vo);
	}
	public int insertGoods(GoodsInfoVO vo) throws Exception{
		return dao.insertGoods(vo);
	}
}
