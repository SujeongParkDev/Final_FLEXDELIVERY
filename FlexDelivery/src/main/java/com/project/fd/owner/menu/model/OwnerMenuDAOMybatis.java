package com.project.fd.owner.menu.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fd.owner.advertise.model.OwnerAdvertiseAllVO;


@Repository
public class OwnerMenuDAOMybatis implements OwnerMenuDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.ownermenu.";
	
	public List<OwnerMenuAllVO> selectMenuAllView(int storeNo) {
		return sqlSession.selectList(namespace+"selectMenuAllView", storeNo);
	}
	
	public OwnerMenuAllVO selectMenuViewBymenuNo(int menuNo) {
		return sqlSession.selectOne(namespace+"selectMenuViewBymenuNo", menuNo);
	}
	
	
	public List<OwnerMenuOptionAllVO> selectMenuOptionAllView(int menuNo) {
		return sqlSession.selectList(namespace+"selectMenuOptionAllView", menuNo);
	}
	
	public List<OwnerStoreMenuGroupVO> selectMenuGroupByNo(int storeNo) {
		return sqlSession.selectList(namespace+"selectMenuGroupByNo", storeNo);
	}
	
	public int updateMenuGroupByNo(OwnerStoreMenuGroupVO ownerStoreMenuGroupVo) {
		return sqlSession.update(namespace+"updateMenuGroupByNo", ownerStoreMenuGroupVo);
	}
	
	
	public OwnerStoreMenuGroupVO selectMenuGroupByGroupNo(int sMGroupNo) {
		return sqlSession.selectOne(namespace+"selectMenuGroupByGroupNo", sMGroupNo);
	}
	
	public int deleteMenuGroupByNo(int sMGroupNo) {
		return sqlSession.delete(namespace+"deleteMenuGroupByNo", sMGroupNo);
	}
	
	public int insertMenuGroup(OwnerStoreMenuGroupVO ownerStoreMenuGroupVo) {
		return sqlSession.insert(namespace+"insertMenuGroup", ownerStoreMenuGroupVo);
	}
	
	
	public List<OwnerMenuAllVO> selectMenuViewBymenuGroupNo(OwnerStoreMenuGroupVO ownerStoreMenuGroupVo){
		return sqlSession.selectList(namespace+"selectMenuViewBymenuGroupNo", ownerStoreMenuGroupVo);
	}
	
	
	public int insertMenu(OwnerMenuVO ownerMenuVo) {
		return sqlSession.insert(namespace+"insertMenu", ownerMenuVo);
	}
	
	public int deleteMenuByNo(int menuNo) {
		return sqlSession.delete(namespace+"deleteMenuByNo", menuNo);
	}
	
	
}
