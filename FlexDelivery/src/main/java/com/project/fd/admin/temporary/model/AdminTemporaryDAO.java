package com.project.fd.admin.temporary.model;

import java.util.List;

public interface AdminTemporaryDAO {
	public List<AdminTemporaryVO> editList();
	public AdminTemporaryVO editDetail(long no);
	public int editAgree(long no);
	public int editDeny(long no);
}
