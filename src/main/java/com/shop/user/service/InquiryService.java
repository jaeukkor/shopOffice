package com.shop.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.table.vo.BoardInfoVO;
import com.shop.table.vo.OrderInfoVO;
import com.shop.table.vo.UserInfoVO;
import com.shop.user.dao.InquiryDao;



@Service
public class InquiryService {

	@Autowired
	InquiryDao dao;
	
	
	public List<BoardInfoVO> selectBoardList(BoardInfoVO vo) throws Exception{
		return dao.selectBoardList(vo);
	}
	
	
	public BoardInfoVO selectInquiry(BoardInfoVO vo) throws Exception{
		return dao.selectInquiry(vo);
	}
	public int updateReply(BoardInfoVO vo) throws Exception{
		return dao.updateReply(vo);
	}
	
	
}
