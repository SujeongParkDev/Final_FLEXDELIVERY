package com.project.fd.owner.model;

public interface OwnerDAO {
	public String selectPwd(String userid);
	OwnerVO selectOwner(String userid);
	public int insertowner(OwnerVO ownerVo);
	public int checkDup(String ownerId);
	public OwnerAuthorityVO selectOwnerAuthorityAll(String userid);
}
