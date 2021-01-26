package com.project.fd.admin.temporary.model;

import java.util.List;

public interface AdminTemporaryService {
	public List<AdminTemporaryVO> approvalList();
	public AdminTemporaryVO approvalDetail(int no);
}
