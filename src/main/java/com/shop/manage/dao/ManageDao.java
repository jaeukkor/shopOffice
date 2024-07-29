package com.shop.manage.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.ManageInfoVO;

@MapperScan(basePackages="com.shop.manage.dao")
public interface ManageDao {
	
	public List<ManageInfoVO> selectManageList(ManageInfoVO vo) throws Exception;
	public ManageInfoVO selectManage(ManageInfoVO vo) throws Exception;
	public int updateManage(ManageInfoVO vo) throws Exception;
	public int insertManage(ManageInfoVO vo) throws Exception;

}
