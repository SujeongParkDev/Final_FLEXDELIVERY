package com.project.fd.owner.store.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.fd.owner.common.LocationVO;

@Service
public class OwnerStoresServiceImpl implements OwnerStoresService{

	@Autowired OwnerStoresDAO ownerStoresDao;

	@Override
	public int insertOwnerStores(OwnerStoresVO ownerStoresVo) {
		return ownerStoresDao.insertOwnerStores(ownerStoresVo);
	}
	
	public int selectStoreNoByNo(int ownerNo) {
		return ownerStoresDao.selectStoreNoByNo(ownerNo);
	}

	@Override
	public List<LocationVO> AllLocaion() {
		return ownerStoresDao.AllLocaion(); 
	}

	
}
