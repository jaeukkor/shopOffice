package com.shop.supplier.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.GoodsInfoVO;
import com.shop.table.vo.SupplierInfoVO;
import com.shop.table.vo.SupplierOrderVO;

@MapperScan(basePackages="com.shop.supplier.dao")
public interface SupplierOrderGoodsDao {
	
	public List<SupplierOrderVO> selectSuppList(SupplierOrderVO vo) throws Exception;
	
	public  SupplierOrderVO selectOrderList(SupplierOrderVO vo) throws Exception;
	
	public List<SupplierInfoVO> selectSupplierInfoList() throws Exception;
	
	public List<SupplierOrderVO> odaList(SupplierOrderVO vo) throws Exception;
	
	public int updateOrderList(SupplierOrderVO vo) throws Exception;
	
	public  int deleteOrderList(SupplierOrderVO vo) throws Exception;
	
	public  int deletOrderList(SupplierOrderVO vo) throws Exception;
	
	public List<GoodsInfoVO> selectGoodsInfoList(SupplierOrderVO vo) throws Exception;
	
	public  int insertOrderList(SupplierOrderVO vo) throws Exception;
	
	public  SupplierOrderVO selectssuplierList(SupplierOrderVO vo) throws Exception;
	
	public  int deletGoodsList(SupplierOrderVO vo) throws Exception;
	public  int insertSupplierList(SupplierOrderVO vo) throws Exception;
	public  int insertOrderGoodsList(SupplierOrderVO vo) throws Exception;
	
	public String selectNewOrderNo() throws Exception;

}
