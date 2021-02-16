package com.project.fd.owner.model;

import org.mindrot.jbcrypt.BCrypt;
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
			//if (BCrypt.checkpw(pwd, dbPwd)) { //비밀번호 암호화 체크
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
	
	
	
	

	@Override
	public int checkAuthority(String userid) {
		
		 OwnerAuthorityVO vo = ownerDao.selectOwnerAuthorityAll(userid);
		 
		 int result = NO_LICENSE;
		 System.out.println("vo.getRagreeno()"+vo.getRagreeno());
		 System.out.println("vo"+vo);
		 
		 if((vo.getOwnerId()!=null && !vo.getOwnerId().isEmpty()) 
				 	&& (vo.getRagreeno()<3 || vo.getRagreeno()==4)) {
			 if(vo.getRagreeno()==1 && vo.getoRegisterNo()!=0) {
				 result=LICENSE_STAY;
			 }else {
				 result=NO_LICENSE;
			 }
		 } else if(vo.getRagreeno()==3
				 	&& (vo.getSagreeno()<3|| vo.getSagreeno()==4)) {
			 if(vo.getSagreeno()==1 && vo.getStoreNo()!=0) {
				 result=STORE_STAY;
			 }else {
				 result=NO_STORE;
			 }
		 }else if(vo.getRagreeno()==3 && vo.getSagreeno()==8 ) {
				 result=WITHDRAW_STAY;
		 }else if(vo.getRagreeno()==3 && vo.getSagreeno()==9) {
				 result=WITHDRAW_SUCCESS;
		 } else if(vo.getRagreeno()==3 && vo.getSagreeno()==3) {
			 	result=HAVE_ALL;
		 }
		 System.out.println("result="+result);
		 
		return result;
	}
	
	public OwnerAuthorityVO selectOwnerAuthorityAll(String userid) {
		return ownerDao.selectOwnerAuthorityAll(userid);
	}
	
	public int withdrawOwner(int ownerNo) {
		return ownerDao.withdrawOwner(ownerNo);
	}

	
	public int withdrawStore(int storeNo) {
		return ownerDao.withdrawStore(storeNo);
	}
	
	public int updateOwner(OwnerVO vo) {
		return ownerDao.updateOwner(vo);
	}
}
