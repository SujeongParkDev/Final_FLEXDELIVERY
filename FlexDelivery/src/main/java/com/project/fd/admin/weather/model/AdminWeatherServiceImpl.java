package com.project.fd.admin.weather.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminWeatherServiceImpl implements AdminWeatherService{

	@Autowired
	public AdminWeatherDAO weatherDao;
	
	@Override
	public List<AdminWeatherVO> selectAll() {
		return weatherDao.selectAll();
	}

	@Override
	public int insertWeather(AdminWeatherVO weatherVo) {
		return weatherDao.insertWeather(weatherVo);
	}

	@Override
	public int updateWeather(AdminWeatherVO weatherVo) {
		return weatherDao.updateWeather(weatherVo);
	}

	@Override
	public int deleteWeather(AdminWeatherVO weatherVo) {
		return weatherDao.deleteWeather(weatherVo);
	}

}