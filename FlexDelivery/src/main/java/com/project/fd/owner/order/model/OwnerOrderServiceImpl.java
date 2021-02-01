package com.project.fd.owner.order.model;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;


@Service
public class OwnerOrderServiceImpl implements OwnerOrderService{

	@Autowired
	private OwnerOrderDAO ownerOrderDao;
	
	public int selectTotalRecord(Map<String, Object> map) {
		return ownerOrderDao.selectTotalRecord(map);
	}
	
	public List<Map<String, Object>> selectOrderAllView(Map<String, Object> map){
		return ownerOrderDao.selectOrderAllView(map);
	}
		
	public Map<String, Object> selectMenuNoByOrderNo(int ordersNo){
		return ownerOrderDao.selectMenuNoByOrderNo(ordersNo);
	}
	
	public int selectCountByOrderNo(int ordersNo) {
		return ownerOrderDao.selectCountByOrderNo(ordersNo);
	}
	
	
	@Override
	@Transactional
	public Map<String, Object> getTitle(int ordersNo) {
		Map<String, Object> mapResultTwo = new HashMap<String, Object>();
		try {			
			Map<String, Object> map = ownerOrderDao.selectMenuNoByOrderNo(ordersNo);
			
			int count =ownerOrderDao.selectCountByOrderNo(ordersNo);
			
			String title = ((String)map.get("menuName"))+"<br>"+"외 "+count+"건";
			mapResultTwo.put("title", title);
			mapResultTwo.put("menuNo", (Integer)map.get("menuNo"));
		}
		catch(RuntimeException e) {
			e.printStackTrace();
			mapResultTwo.clear();
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
		return mapResultTwo;
	}
}
