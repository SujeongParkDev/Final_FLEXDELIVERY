package com.project.fd.owner.store.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StoresServiceImpl implements StoresService{

	@Autowired StoresDAO storesDao;
	
}
