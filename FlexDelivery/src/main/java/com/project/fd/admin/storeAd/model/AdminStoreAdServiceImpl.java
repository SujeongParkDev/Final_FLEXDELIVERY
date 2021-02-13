package com.project.fd.admin.storeAd.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.fd.owner.advertise.model.OwnerStoreAdVO;

@Service
public class AdminStoreAdServiceImpl implements AdminStoreAdService{
	
	@Autowired
	AdminStoreAdDAO adminStoreAdDao;

	@Override
	public List<OwnerStoreAdVO> approvalList() {
		return adminStoreAdDao.approvalList();
	}

}
