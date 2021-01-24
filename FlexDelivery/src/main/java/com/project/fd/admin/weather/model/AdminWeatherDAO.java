package com.project.fd.admin.weather.model;

import java.util.List;

public interface AdminWeatherDAO {
	List<AdminWeatherVO> selectAll();

	int insertWeather(AdminWeatherVO weatherVo);

	int updateWeather(AdminWeatherVO weatherVo);

	int deleteWeather(AdminWeatherVO weatherVo);

}
