package com.shop.schedule.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.OrderInfoVO;

@MapperScan(basePackages="com.shop.schedule.dao")
public interface DailyOrderDao {

	public int insertOrderList() throws Exception;
}
