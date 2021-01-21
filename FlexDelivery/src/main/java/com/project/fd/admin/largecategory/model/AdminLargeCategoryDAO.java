package com.project.fd.admin.largecategory.model;

import java.util.List;

import com.project.fd.common.SearchVO;

public interface AdminLargeCategoryDAO {

	List<AdminLargeCategoryVO> selectAll();

	int selectTotalRecord(SearchVO searchVo);

	AdminLargeCategoryVO selectByNo(int no);

	public int insertLargeCategory(AdminLargeCategoryVO largeCategoryVo);

	
}
