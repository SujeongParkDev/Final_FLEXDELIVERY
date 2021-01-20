package com.project.fd.owner.advertise.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdvertiseServiceImpl implements AdvertiseService {
	
	@Autowired
	private AdvertiseDAO advertiseDao;

	@Override
	public List<AdvertiseAllVO> selectAdvertieseView(int storeNo) {
		return advertiseDao.selectAdvertieseView(storeNo);
	}
	
}
