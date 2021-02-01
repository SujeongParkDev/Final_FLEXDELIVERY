package com.project.fd.owner.order.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fd.owner.advertise.model.OwnerAdvertiseSearchVO;

@Repository
public class OwnerOrderDAOMybatis implements OwnerOrderDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.ownerorder.";
	
	public int selectTotalRecord(Map<String, Object> map) {
		return sqlSession.selectOne(namespace+"selectTotalRecord", map);
	}
	
	public List<Map<String, Object>> selectOrderAllView(Map<String, Object> map){
		return sqlSession.selectList(namespace+"selectOrderAllView", map);
	}
	
	public Map<String, Object> selectMenuNoByOrderNo(int ordersNo){
		return sqlSession.selectOne(namespace+"selectMenuNoByOrderNo", ordersNo);
	}
	
	public int selectCountByOrderNo(int ordersNo){
		return sqlSession.selectOne(namespace+"selectCountByOrderNo", ordersNo);
	}
	
	

}
