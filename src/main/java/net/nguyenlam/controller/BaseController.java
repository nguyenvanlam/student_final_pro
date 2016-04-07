package net.nguyenlam.controller;

import javax.servlet.http.HttpServletRequest;

import net.nguyenlam.utils.Constants;

import org.springframework.mobile.device.Device;

/**
 * 
 * @author NGUYEN LAM
 *
 */
public class BaseController {
	
	public String detectDevice(Device device) {
		if(device.isMobile()) {
			return Constants.MAP_SP;
		} else {
			return Constants.MAP_PC;
		}
	}
	
	protected String getBaseUrl(HttpServletRequest request) {
		String baseUrl = "http://";
		//get base name
		baseUrl += request.getLocalName();
		//port
		baseUrl += ":8080";
		//get context path
		baseUrl += request.getContextPath();
		return baseUrl;
	}
}
