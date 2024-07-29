package com.shop.schedule.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.shop.schedule.service.DailyOrderService;
import com.shop.table.vo.OrderInfoVO;

@Component
public class DailyOrderSchedule {
	@Autowired
	DailyOrderService service;
	
	@Scheduled(cron = "* * 3 * * *")
	public void mainJob() {
		try {
			int c = service.insertOrderList();
			
			
		}catch (Exception e) {
			System.out.println("* Batch 시스템이 예기치 않게 종료되었습니다. Message: {}" 
						+ e.getMessage());
					
		}
	}
}
