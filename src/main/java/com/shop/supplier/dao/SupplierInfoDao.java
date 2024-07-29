package com.shop.supplier.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.SupplierInfoVO;

@MapperScan(basePackages="com.shop.supplier.dao")
public interface SupplierInfoDao {
	
	public List<SupplierInfoVO> selectSupList(SupplierInfoVO vo) throws Exception;
	
	public int updateSupplier(SupplierInfoVO vo) throws Exception;
	
	public int insertSupplier(SupplierInfoVO vo) throws Exception;
}
