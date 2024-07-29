package com.shop.manage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.manage.service.ManageService;
import com.shop.table.vo.ManageInfoVO;

@Controller
public class ManageController {
@Autowired
ManageService service;

		@RequestMapping("/manage/list")
		public String list() throws Exception {
			return "manage/list";
		}
		@RequestMapping("/manage/search")
		@ResponseBody
		public List<ManageInfoVO> manageSearch(@ModelAttribute("ManageInfoVO") ManageInfoVO vo) throws Exception {
			List<ManageInfoVO> list = service.selectManageList(vo);
			
			return list;
		}
		
		@RequestMapping("/manage/choiceManage")
		@ResponseBody
		public  ManageInfoVO choiceManage(@ModelAttribute("ManageInfoVO") ManageInfoVO vo) throws Exception {
			vo = service.selectManage(vo);
			
			return vo;
		}
		@RequestMapping("/manage/upManage")
		@ResponseBody
		public  int upManage(@ModelAttribute("ManageInfoVO") ManageInfoVO vo) throws Exception {
			int c = 0;
			if(vo.getTextt().equals("U")) {
				c = service.updateManage(vo);
			}else if (vo.getTextt().equals("I")) {
				c = service.insertManage(vo);
			}
			
			return c;
		}
}
