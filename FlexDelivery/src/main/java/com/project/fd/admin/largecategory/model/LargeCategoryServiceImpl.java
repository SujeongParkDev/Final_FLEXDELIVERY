package com.project.fd.admin.largecategory.model;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.fd.common.SearchVO;

@Service
public class LargeCategoryServiceImpl implements LargeCategoryService{
	private LargeCategoryDAO largeCategoryDao;
	
	@Override
	public List<LargeCategoryVO> selectAll(SearchVO searchVo) {
		return largeCategoryDao.selectAll(searchVo);
	}

	@Override
	public int selectTotalRecord(SearchVO searchVo) {
		return largeCategoryDao.selectTotalRecord(searchVo);
	}

}
