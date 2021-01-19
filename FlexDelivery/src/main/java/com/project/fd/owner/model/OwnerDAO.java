package com.project.fd.owner.model;

public interface OwnerDAO {
	public String selectPwd(String userid);
	OwnerVO selectOwner(String userid);
}
