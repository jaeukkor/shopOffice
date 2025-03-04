package com.shop.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.table.vo.BoardInfoVO;
import com.shop.user.service.InquiryService;

@Controller
public class InquiryController {


		@Autowired
		InquiryService service;
		
		@RequestMapping("/inquiry/list")
		public String list() throws Exception {
			return "inquiry/list";
		}
		
		
		@RequestMapping("/inquiry/searchlist")
		@ResponseBody
		public List<BoardInfoVO> searchlist(@ModelAttribute("BoardInfoVO") BoardInfoVO vo) throws Exception {
			List<BoardInfoVO> list = service.selectBoardList(vo);
			
			return list;
		}
		
		@RequestMapping("/getBoardDetail")
		@ResponseBody
		public BoardInfoVO getBoardDetail(@ModelAttribute("BoardInfoVO") BoardInfoVO vo) throws Exception {
		
			 vo =  service.selectInquiry(vo);
		  return vo;
		  
		}
		
		
		
		@RequestMapping("/getReply")
		@ResponseBody
		public int getReply(@ModelAttribute("BoardInfoVO") BoardInfoVO vo)throws Exception {
			int cnt = service.updateReply(vo);
			return cnt;
			
			}
		
}

	

