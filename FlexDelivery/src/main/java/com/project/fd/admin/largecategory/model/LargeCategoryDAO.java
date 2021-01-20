package com.project.fd.admin.largecategory.model;

import java.util.List;

import com.project.fd.common.SearchVO;

public interface LargeCategoryDAO {

	List<LargeCategoryVO> selectAll(SearchVO searchVo);

	int selectTotalRecord(SearchVO searchVo);

}
