package com.project.fd.owner.menu.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.fd.owner.advertise.model.OwnerAdvertiseAllVO;


@Service
public class OwnerMenuServiceImpl implements  OwnerMenuService{
	@Autowired
	private OwnerMenuDAO ownerMenuDao;
	
	public List<OwnerMenuAllVO> selectMenuAllView(int storeNo){
		return ownerMenuDao.selectMenuAllView(storeNo);
	}
	
	public OwnerMenuAllVO selectMenuViewBymenuNo(int menuNo) {
		return ownerMenuDao.selectMenuViewBymenuNo(menuNo);
	}
	
	public List<OwnerMenuOptionAllVO> selectMenuOptionAllView(int menuNo){
		return ownerMenuDao.selectMenuOptionAllView(menuNo);
	}
	
	public List<OwnerStoreMenuGroupVO> selectMenuGroupByNo(int storeNo){
		return ownerMenuDao.selectMenuGroupByNo(storeNo);
	}
	
	public int updateMenuGroupByNo(OwnerStoreMenuGroupVO ownerStoreMenuGroupVo) {
		return ownerMenuDao.updateMenuGroupByNo(ownerStoreMenuGroupVo);
	}
	
	public OwnerStoreMenuGroupVO selectMenuGroupByGroupNo(int sMGroupNo) {
		return ownerMenuDao.selectMenuGroupByGroupNo(sMGroupNo);
	}
	
	public int deleteMenuGroupByNo(int sMGroupNo) {
		return ownerMenuDao.deleteMenuGroupByNo(sMGroupNo);
	}
	
	public int insertMenuGroup(OwnerStoreMenuGroupVO ownerStoreMenuGroupVo) {
		return ownerMenuDao.insertMenuGroup(ownerStoreMenuGroupVo);
	}
}
