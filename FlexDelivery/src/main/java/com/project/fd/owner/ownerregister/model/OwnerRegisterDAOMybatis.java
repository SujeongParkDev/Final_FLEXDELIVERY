package com.project.fd.owner.ownerregister.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OwnerRegisterDAOMybatis implements OwnerRegisterDAO{

	@Autowired SqlSessionTemplate sqlSession;
	private String namespace="";
}
