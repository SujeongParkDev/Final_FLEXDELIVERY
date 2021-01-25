package com.project.fd.owner.store.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerStoresServiceImpl implements OwnerStoresService{

	@Autowired OwnerStoresDAO ownerStoresDao;
	
	public int selectStoreNoByNo(int ownerNo) {
		return ownerStoresDao.selectStoreNoByNo(ownerNo);
	}
}
