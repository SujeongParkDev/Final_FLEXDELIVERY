package com.project.fd.admin.mediumcategory.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminMediumCategoryServiceImpl implements AdminMediumCategoryService{
	@Autowired
	private AdminMediumCategoryDAO mediumCategoryDao;
	
	@Override
	public List<AdminMediumCategoryViewVO> selectAll2() {
		return mediumCategoryDao.selectAll2();
	}

	@Override
	public int insertMediumcategory(AdminMediumCategoryVO mediumCategoryVo) {
		return mediumCategoryDao.insertMediumcategory(mediumCategoryVo);
	}

}
