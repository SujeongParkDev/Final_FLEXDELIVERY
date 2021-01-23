package com.project.fd.owner.ownerregister.model;

import java.util.List;

import com.project.fd.common.DateSearchVO;

public interface OwnerRegisterService {
	int insertRegister(OwnerRegisterVO vo);
	List<OwnerAllRegisterVO> selectTempList(DateSearchVO searchVo);
	int getTotalRecord(DateSearchVO searchVo);
	
	
}
