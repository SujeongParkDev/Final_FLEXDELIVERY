package com.project.fd.owner.store.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.fd.owner.common.LocationVO;
import com.project.fd.owner.model.OwnerAuthorityVO;

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

	public static final int LICENSE_STAY=4; // 라이센스 승인대기중인 경우
	public static final int STORE_STAY=5; //점포 승인대기중인 경우

	@Override
	public int checkAuthority2(String userid) {
		
		 OwnerAuthorityVO vo = ownerStoresDao.selectOwnerAuthorityAll(userid);
		 
		 int result = NO_LICENSE;
		 
		 if((vo.getOwnerId()!=null && !vo.getOwnerId().isEmpty()) 
				 	&& (vo.getRagreeno()<3 || vo.getRagreeno()>3)) {
			 if(vo.getRagreeno()==1) {
				 result=LICENSE_STAY;
			 }else {
				 result=NO_LICENSE;
			 }
		 } else if(vo.getRagreeno()==3
				 	&& (vo.getSagreeno()<3|| vo.getSagreeno()>3)) {
			 if(vo.getSagreeno()==1) {
				 result=STORE_STAY;
			 }else {
				 result=NO_STORE;
			 }
		 }else if(vo.getRagreeno()==3 && vo.getSagreeno()==3) {
			 result=HAVE_ALL;
		 }
		
		return result;
	}
	public OwnerAuthorityVO selectOwnerAuthorityAll2(String userid) {
		return ownerStoresDao.selectOwnerAuthorityAll(userid);
	}
	
	public OwnerStoresVO selectStoreByOwnerNo(int ownerNo) {
		return ownerStoresDao.selectStoreByOwnerNo(ownerNo);
	}
	
	public Map<String, Object> selectOperationViewAll(int ownerNo){
		return ownerStoresDao.selectOperationViewAll(ownerNo);
	}
	
	public int holidayUpdate(Map<String, Object> map) {
		return ownerStoresDao.holidayUpdate(map);
	}
	
	public int updateStatusStop(int storeNo) {
		return ownerStoresDao.updateStatusStop(storeNo);
	}
	
	public int updateTime(Map<String,Object> map) {
		return ownerStoresDao.updateTime(map);
	}
}
