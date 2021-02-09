package com.project.fd.owner.store.model;

import java.util.List;
import java.util.Map;

import com.project.fd.owner.common.LocationVO;
import com.project.fd.owner.model.OwnerAuthorityVO;

public interface OwnerStoresDAO {

	int insertOwnerStores(OwnerStoresVO ownerStoresVo);
	public int selectStoreNoByNo(int ownerNo);
	List<LocationVO> AllLocaion(); 
	public OwnerAuthorityVO selectOwnerAuthorityAll(String userid);
	public OwnerStoresVO selectStoreByOwnerNo(int ownerNo);
	public Map<String, Object> selectOperationViewAll(int ownerNo);
	public int holidayUpdate(Map<String, Object> map);
	public int updateStatusStop(int storeNo);
	public int updateTime(Map<String,Object> map);
}
