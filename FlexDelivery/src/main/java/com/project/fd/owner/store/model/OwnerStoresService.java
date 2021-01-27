package com.project.fd.owner.store.model;

import java.util.List;
import java.util.Map;

import com.project.fd.owner.common.LocationVO;

public interface OwnerStoresService {

	//Stores
	int insertOwnerStores(OwnerStoresVO ownerStoresVo);
	 public int selectStoreNoByNo(int ownerNo);
	 List<LocationVO> AllLocaion(); 
}
