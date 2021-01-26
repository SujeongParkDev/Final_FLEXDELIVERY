package com.project.fd.owner.menu.model;

import java.util.List;

public interface OwnerMenuService {
	public static final int SUCCESS_POST = 1;
	public static final int FAIL_POST = 2;
	
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
