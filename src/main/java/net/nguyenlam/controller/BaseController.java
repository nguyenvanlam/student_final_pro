package net.nguyenlam.controller;

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
}
