package com.project.fd.owner.menu.model;

import java.util.List;

public interface OwnerMenuDAO {

	
	public List<OwnerMenuAllVO> selectMenuAllView(int storeNo);
	public OwnerMenuAllVO selectMenuViewBymenuNo(int menuNo);
	public List<OwnerMenuOptionAllVO> selectMenuOptionAllView(int menuNo);
	public List<OwnerStoreMenuGroupVO> selectMenuGroupByNo(int storeNo);
	public int updateMenuGroupByNo(OwnerStoreMenuGroupVO ownerStoreMenuGroupVo);
	public OwnerStoreMenuGroupVO selectMenuGroupByGroupNo(int sMGroupNo);
	public int deleteMenuGroupByNo(int sMGroupNo);
	public int insertMenuGroup(OwnerStoreMenuGroupVO ownerStoreMenuGroupVo);
	public List<OwnerMenuAllVO> selectMenuViewBymenuGroupNo(OwnerStoreMenuGroupVO ownerStoreMenuGroupVo);
	
	public int insertMenu(OwnerMenuVO ownerMenuVo);
	public int deleteMenuByNo(int menuNo);
}
