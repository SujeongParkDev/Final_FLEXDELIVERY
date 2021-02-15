package com.project.fd.member.today.model;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberTodayDAOMybatis implements MemberTodayDAO{

		@Autowired
		private SqlSessionTemplate sqlSession;
		
		private String namespace="config.mybatis.mapper.oracle.memberToday.";
		
		public Map<String, Object> selectMCategory(){
			return sqlSession.selectOne(namespace+"selectMCategory");
		}
}
