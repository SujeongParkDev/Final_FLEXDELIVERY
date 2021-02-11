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
	public OwnerStoresVO selectStoreByOwnerNo(int ownerNo);
	public Map<String, Object> selectOperationViewAll(int ownerNo);
	public int holidayUpdate(Map<String, Object> map);
	public int updateStatus(Map<String,Object> map);//지안 20210211 수정
	public int updateTime(Map<String,Object> map);
	public OwnerStoresVO selectBasic(int ownerNo);
	public int updateContent(Map<String, Object> map);
	//지안 20210211 수정시작
	public List<Map<String, Object>> selectsStatusAll();
	//지안 20210211 수정끝
}
