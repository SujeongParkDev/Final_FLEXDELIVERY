package com.project.fd.admin.largecategory.model;

import java.util.List;

import com.project.fd.common.SearchVO;

public interface AdminLargeCategoryDAO {

	List<AdminLargeCategoryVO> selectAll(SearchVO searchVo);

	int selectTotalRecord(SearchVO searchVo);

	AdminLargeCategoryVO selectByNo(int no);

	int insertLargeCategory(AdminLargeCategoryVO largeCategoryVo);

}
