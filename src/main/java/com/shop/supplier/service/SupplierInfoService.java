package com.shop.supplier.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.supplier.dao.SupplierInfoDao;
import com.shop.table.vo.SupplierInfoVO;

@Service
public class SupplierInfoService {

	@Autowired
	SupplierInfoDao dao;
	public List<SupplierInfoVO> selectSupList(SupplierInfoVO vo) throws Exception{
		return dao.selectSupList(vo);
	}
	
	public  SupplierInfoVO selectSupInfo(SupplierInfoVO vo) throws Exception{
		
		List<SupplierInfoVO> list = dao.selectSupList(vo);
		
		if(list!=null && list.size()>0) {
			return list.get(0);
		}else {
			return null;
		}
		
	}
	public int updateSupplier(SupplierInfoVO vo) throws Exception{
		return dao.updateSupplier(vo);
	}
	public int insertSupplier(SupplierInfoVO vo) throws Exception{
		return dao.insertSupplier(vo);
	}
}
