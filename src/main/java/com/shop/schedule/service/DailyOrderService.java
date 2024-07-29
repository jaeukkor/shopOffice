package com.shop.schedule.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.schedule.dao.DailyOrderDao;
import com.shop.table.vo.OrderInfoVO;

@Service
public class DailyOrderService {
	 @Autowired
	 DailyOrderDao dao;
	 
	 public int insertOrderList() throws Exception {
		 return dao.insertOrderList();
	 }
}
