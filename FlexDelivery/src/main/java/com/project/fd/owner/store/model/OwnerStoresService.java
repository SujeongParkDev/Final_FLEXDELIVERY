package com.project.fd.owner.store.model;

import java.util.List;
import java.util.Map;

import com.project.fd.owner.common.LocationVO;
import com.project.fd.owner.model.OwnerAuthorityVO;

public interface OwnerStoresService {
	
	//권한에 따른 확인 시 사용
		public static final int NO_LICENSE=1;  //회원가입은 했으나 사업자 등록증 없는 경우
		public static final int NO_STORE=2; // 사업자 등록은 했지만 점포가 없는 경우
		public static final int HAVE_ALL=3; // 모든것을 다 가진 경우 
		public static final int LICENSE_STAY=4; // 라이센스 승인대기중인 경우
		public static final int STORE_STAY=5; //점포 승인대기중인 경우

	//Stores
	int insertOwnerStores(OwnerStoresVO ownerStoresVo);
	 public int selectStoreNoByNo(int ownerNo);
	 List<LocationVO> AllLocaion(); 
	 public int checkAuthority2(String userid);
	  OwnerAuthorityVO selectOwnerAuthorityAll2(String userid);
	  public OwnerStoresVO selectStoreByOwnerNo(int ownerNo);
	  public Map<String, Object> selectOperationViewAll(int ownerNo);
	  public int holidayUpdate(Map<String, Object> map);
	  public int updateStatusStop(int storeNo);
	  public int updateTime(Map<String,Object> map);
}
