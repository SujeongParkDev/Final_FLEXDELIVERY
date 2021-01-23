package com.project.fd.admin.largecategory.model;

import java.util.List;
import java.util.Map;

import com.project.fd.common.SearchVO;

public interface AdminLargeCategoryService {

	List<AdminLargeCategoryVO> selectAll();

	int selectTotalRecord(SearchVO searchVo);

	AdminLargeCategoryVO selectByNo(int no);

	int insertLargeCategory(AdminLargeCategoryVO largecategoryVo);

	int updateLargeCategory(AdminLargeCategoryVO largecategoryVo);

	int deleteLargeCategory(AdminLargeCategoryVO largecategoryVo);
}
