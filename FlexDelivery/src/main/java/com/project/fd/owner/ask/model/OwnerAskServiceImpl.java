package com.project.fd.owner.ask.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerAskServiceImpl implements OwnerAskService{

	@Autowired OwnerAskDAO ownerAskDao;

	@Override
	public int insertASK(OwnerAskVO ownerAskVo) {
		return ownerAskDao.insertASK(ownerAskVo);
	}

	@Override
	public List<OwnerAskVO> selectAllAsk(OwnerAskSearchVO searchVo) {
		return ownerAskDao.selectAllAsk(searchVo);
	}

	@Override
	public int selectTotalRecord(OwnerAskSearchVO searchVo) {
		return ownerAskDao.selectTotalRecord(searchVo);
	}
	
	
}
