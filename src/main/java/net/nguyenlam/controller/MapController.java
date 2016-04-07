package net.nguyenlam.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.nguyenlam.entities.Line;
import net.nguyenlam.logic.MapLogic;
import net.nguyenlam.utils.Constants;

import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MapController extends BaseController{
	
	@RequestMapping(value = "/view/{idUniversity}")
	public ModelAndView setDataForView(Device device, @PathVariable("idUniversity") int idUniversity, 
			HttpSession session, HttpServletRequest request) {
		String baseUrl = getBaseUrl(request);
		String viewName = "";
		//get device
		viewName = detectDevice(device);
		MapLogic mapLogic = new MapLogic();
		ModelAndView mapView = mapLogic.initMap(viewName, idUniversity);
		//get line obj
		List<Line> lsLineOb = new ArrayList<Line>();
		lsLineOb = mapLogic.getLineObj(idUniversity);
		mapView.addObject("lsLineOb", lsLineOb);
		mapView.addObject("baseUrl", baseUrl);
		session.setAttribute("id_university", idUniversity);
		return mapView;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String notFoundSearch(Model model) {
		model.addAttribute("msg", "The webpage is not found");
		return "err_message";
	}
}
