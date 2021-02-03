package com.project.fd.owner.order.model;



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
		
	public String selectMenuNoByOrderNo(int ordersNo) {
		return ownerOrderDao.selectMenuNoByOrderNo(ordersNo);
	}
	
	public int selectCountByOrderNo(int ordersNo) {
		return ownerOrderDao.selectCountByOrderNo(ordersNo);
	}
	
	public List<Map<String, Object>> selectMenuDetailByOrdersNo(int ordersNo){
		return ownerOrderDao.selectMenuDetailByOrdersNo(ordersNo);
	}
	
	public int updateOrdersToRequestIng(int ordersNo) {
		return ownerOrderDao.updateOrdersToRequestIng(ordersNo);
	}
	
	public int updateOrdersToDeliveryIng(Map<String, Object> map) {
		return ownerOrderDao.updateOrdersToDeliveryIng(map);
	}
	
	@Override
	@Transactional
	public String getTitle(int ordersNo) {
		String title="";
		try {			
			String menuName = ownerOrderDao.selectMenuNoByOrderNo(ordersNo);
			
			int count =ownerOrderDao.selectCountByOrderNo(ordersNo)-1;
			if(count==0) {
				title=menuName;
			}else {
				title = menuName+"<br>"+"외 "+count+"건";
			}
			
			
			
		}
		catch(RuntimeException e) {
			e.printStackTrace();
			title="";
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
		return title;
	}
}
