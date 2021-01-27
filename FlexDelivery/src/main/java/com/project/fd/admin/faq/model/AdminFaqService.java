package com.project.fd.admin.faq.model;

import java.util.List;

public interface AdminFaqService {
	
	List<AdminFaqVO> selectAll();
	
	List<AdminFaqAllViewVO> selectAll2();
	
	int insertFaq(AdminFaqVO faqVo);
	
	int updateFaq(AdminFaqVO faqVo);
	
	int deleteFaq(AdminFaqVO faqVo);
	
}
