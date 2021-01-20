package com.project.fd.admin.largecategory.model;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.fd.common.SearchVO;

@Service
public class AdminLargeCategoryServiceImpl implements AdminLargeCategoryService{
	private AdminLargeCategoryDAO largeCategoryDao;
	
	@Override
	public List<AdminLargeCategoryVO> selectAll(SearchVO searchVo) {
		return largeCategoryDao.selectAll(searchVo);
	}

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		return largeCategoryDao.selectTotalRecord(searchVo);
	}

}
