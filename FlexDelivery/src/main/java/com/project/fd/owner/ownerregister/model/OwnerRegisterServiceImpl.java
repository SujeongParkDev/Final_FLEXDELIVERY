package com.project.fd.owner.ownerregister.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.fd.common.DateSearchVO;

@Service
public class OwnerRegisterServiceImpl implements OwnerRegisterService{

	@Autowired private OwnerRegisterDAO ownerRegisterDao;

	@Override
	public int insertRegister(OwnerRegisterVO vo) {
		return ownerRegisterDao.insertRegister(vo);
	}

	//tempList
	@Override
	public List<OwnerAllRegisterVO> selectTempList(DateSearchVO searchVo) {
		return ownerRegisterDao.selectTempList(searchVo);
	}
	//tempList
	@Override
	public int getTotalRecord(DateSearchVO searchVo) {
		return ownerRegisterDao.getTotalRecord(searchVo);
	}

	@Override
	public List<Map<String, Object>> selectLSJAgreeListView(int ownerNo) {
		return ownerRegisterDao.selectLSJAgreeListView(ownerNo);
	}


	

}
