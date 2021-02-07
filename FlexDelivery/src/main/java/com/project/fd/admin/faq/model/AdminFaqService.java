package com.project.fd.admin.faq.model;

import java.util.List;

public interface AdminFaqService {
	
	List<AdminFaqVO> selectAll();
	
	List<AdminFaqAllViewVO> selectAll2();
	
	List<AdminFaqVO> selectFor(int categoryNo);

	List<AdminFaqAllViewVO> selectFor2(int categoryNo);
	
	
	int insertFaq(AdminFaqVO faqVo);
	
	int updateFaq(AdminFaqVO faqVo);
	
	int deleteFaq(int no);
	
}
