package com.shop.user.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.BoardInfoVO;


@MapperScan(basePackages="com.shop.user.dao")
public interface InquiryDao {

	//사용자 리스트
	public List<BoardInfoVO> selectBoardList(BoardInfoVO vo) throws Exception;

		//사용자 한명
		public BoardInfoVO selectInquiry(BoardInfoVO vo) throws Exception;
		
		public int updateReply(BoardInfoVO vo) throws Exception;
		
	
}
