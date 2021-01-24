package com.project.fd.owner.ownerregister.model;

import java.util.List;
import java.util.Map;

import com.project.fd.common.DateSearchVO;

public interface OwnerRegisterDAO {
	int insertRegister(OwnerRegisterVO vo);
	List<OwnerAllRegisterVO> selectTempList(DateSearchVO searchVo);
	int getTotalRecord(DateSearchVO searchVo);
	List<Map<String, Object>> selectLSJAgreeListView(int ownerNo);
	
}
