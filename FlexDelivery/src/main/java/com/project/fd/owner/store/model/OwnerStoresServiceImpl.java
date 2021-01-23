package com.project.fd.owner.store.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerStoresServiceImpl implements OwnerStoresService{

	@Autowired OwnerStoresDAO ownerStoresDao;

	@Override
	public int insertOwnerStores(OwnerStoresVO ownerStoresVo) {
		return ownerStoresDao.insertOwnerStores(ownerStoresVo);
	}
	
	
	
}
