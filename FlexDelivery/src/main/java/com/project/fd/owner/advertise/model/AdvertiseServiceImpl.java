package com.project.fd.owner.advertise.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdvertiseServiceImpl implements AdvertiseService {
	
	@Autowired
	private AdvertiseDAO advertiseDao;
	
}
