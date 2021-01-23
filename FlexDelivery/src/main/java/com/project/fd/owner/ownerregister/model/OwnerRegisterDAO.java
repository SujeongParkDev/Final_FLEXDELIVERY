package com.project.fd.owner.ownerregister.model;

import java.util.List;

import com.project.fd.common.DateSearchVO;
import com.project.fd.owner.model.OwnerAllAgreementVO;

public interface OwnerRegisterDAO {
	int insertRegister(OwnerRegisterVO vo);
	List<OwnerAllAgreementVO> selectTempList(DateSearchVO searchVo);
	int getTotalRecord(DateSearchVO searchVo);
	
}
