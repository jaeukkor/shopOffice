package com.shop.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.manage.dao.ManageDao;
import com.shop.table.vo.ManageInfoVO;

@Service
public class ManageService {
@Autowired
ManageDao dao;
		public List<ManageInfoVO> selectManageList(ManageInfoVO vo) throws Exception{
			return dao.selectManageList(vo);
		}
		
		public ManageInfoVO selectManage(ManageInfoVO vo) throws Exception{
			return dao.selectManage(vo);
		}
		public int updateManage(ManageInfoVO vo) throws Exception{
			return dao.updateManage(vo);
		}
		public int insertManage(ManageInfoVO vo) throws Exception{
			return dao.insertManage(vo);
		}
}
