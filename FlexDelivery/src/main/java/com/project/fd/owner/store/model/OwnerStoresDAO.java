package com.project.fd.owner.store.model;

import java.util.List;
import java.util.Map;

import com.project.fd.owner.ask.model.OwnerAskSearchVO;
import com.project.fd.owner.ask.model.OwnerAskVO;
import com.project.fd.owner.common.LocationVO;
import com.project.fd.owner.model.OwnerAuthorityVO;

public interface OwnerStoresDAO {

	int insertOwnerStores(OwnerStoresVO ownerStoresVo);
	public int selectStoreNoByNo(int ownerNo);
	List<LocationVO> AllLocaion(); 
	public OwnerAuthorityVO selectOwnerAuthorityAll(String userid);
	
	OwnerStoresVO selectByNo(int storeNo);
	int updateStores(OwnerStoresVO ownerStoresVO);
}
