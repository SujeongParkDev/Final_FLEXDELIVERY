package com.project.fd.owner.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OwnerServiceImpl implements OwnerService {
	@Autowired
	private OwnerDAO ownerDao;
	
	@Override
	public int loginChk(String userid, String pwd) {
		int result=0;
		String dbPwd=ownerDao.selectPwd(userid);
		if(dbPwd==null || dbPwd.isEmpty()) {
			result=ID_NONE;
		}else{
			if (dbPwd.equals(pwd)) {
				result=LOGIN_OK;				
			}else {
				result=PWD_DISAGREE;
			}
		}
		return result;
	}

	@Override
	public OwnerVO selectOwner(String userid) {
		return ownerDao.selectOwner(userid);
	}
	
	public int insertowner(OwnerVO ownerVo) {
		return ownerDao.insertowner(ownerVo);
	}
	
	public int checkDup(String ownerId){
		int count=ownerDao.checkDup(ownerId);
		
		int result=0;
		if(count>0) {
			result=EXIST_ID;  //이미 해당 아이디 존재
		}else {
			result=NON_EXIST_ID; //해당 아이디 없다
		}
		
		return result;
	}
	
	
	public static final int LICENSE_STAY=4; // 라이센스 승인대기중인 경우
	public static final int STORE_STAY=5; //점포 승인대기중인 경우

	@Override
	public int checkAuthority(String userid) {
		
		 OwnerAuthorityVO vo = ownerDao.selectOwnerAuthorityAll(userid);
		 
		 int result = NO_LICENSE;
		 System.out.println("vo.getRagreeno()"+vo.getRagreeno());
		 if((vo.getOwnerId()!=null && !vo.getOwnerId().isEmpty()) 
				 	&& (vo.getRagreeno()<3 || vo.getRagreeno()==4)) {
			 if(vo.getRagreeno()==1) {
				 result=LICENSE_STAY;
				
			 }else {
				 result=NO_LICENSE;
			 }
		 } else if(vo.getRagreeno()==3
				 	&& (vo.getSagreeno()<3|| vo.getSagreeno()==4)) {
			 
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
	
	public OwnerAuthorityVO selectOwnerAuthorityAll(String userid) {
		return ownerDao.selectOwnerAuthorityAll(userid);
	}
	
	public int withdrawOwner(String ownerId) {
		return ownerDao.withdrawOwner(ownerId);
	}
}
