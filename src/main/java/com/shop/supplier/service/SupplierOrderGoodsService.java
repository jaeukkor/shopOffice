package com.shop.supplier.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.supplier.dao.SupplierOrderGoodsDao;
import com.shop.table.vo.GoodsInfoVO;
import com.shop.table.vo.SupplierInfoVO;
import com.shop.table.vo.SupplierOrderVO;

@Service
public class SupplierOrderGoodsService {
	@Autowired
	SupplierOrderGoodsDao dao;
	
	
	public List<SupplierOrderVO> selectSuppList(SupplierOrderVO vo) throws Exception{
		return dao.selectSuppList(vo);
	}
	public  SupplierOrderVO selectOrderList(SupplierOrderVO vo) throws Exception{
		return dao.selectOrderList(vo);
	}
	
	public List<SupplierInfoVO> selectSupplierInfoList() throws Exception{
		return dao.selectSupplierInfoList();
	}
	public List<SupplierOrderVO> odaList(SupplierOrderVO vo) throws Exception{
		return dao.odaList(vo);
	}
	public int updateOrderList(SupplierOrderVO vo) throws Exception{
		return dao.updateOrderList(vo);
	}
	public  int deleteOrderList(SupplierOrderVO vo) throws Exception{
		return dao.deleteOrderList(vo);
	}
	
	public List<GoodsInfoVO> selectGoodsInfoList(SupplierOrderVO vo) throws Exception{
		return dao.selectGoodsInfoList(vo);
	}
	public  int insertOrderList(SupplierOrderVO vo) throws Exception{
		return dao.insertOrderList(vo);
	}
	
	public  SupplierOrderVO selectssuplierList(SupplierOrderVO vo) throws Exception{
		return dao.selectssuplierList(vo);
	}
	public  int deletGoodsList(SupplierOrderVO vo) throws Exception{
		return dao.deletGoodsList(vo);
	}
	public  int deletOrderList(SupplierOrderVO vo) throws Exception{
		return dao.deletOrderList(vo);
	}
	public  int insertSupplierList(SupplierOrderVO vo) throws Exception{
		return dao.insertSupplierList(vo);
	}
	public  int insertOrderGoodsList(SupplierOrderVO vo) throws Exception{
		return dao.insertOrderGoodsList(vo);
	}
	
	public String selectNewOrderNo() throws Exception{
		return dao.selectNewOrderNo();
	}
}
