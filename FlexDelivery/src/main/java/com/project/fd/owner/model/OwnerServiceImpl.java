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

	@Override
	public int checkAuthority(String userid) {
		
		/*
		 * OwnerAuthorityVO vo = ownerDao.selectOwnerAuthorityAll(userid); int result=0;
		 * 
		 * if(vo.getSagreeno())
		 * 
		 */
		return 0;
	}
	
}
