package net.nguyenlam.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.nguyenlam.entities.Coordinates;
import net.nguyenlam.logic.MapLogic;
import net.nguyenlam.logic.SearchLogic;
import net.nguyenlam.utils.Constants;
import net.nguyenlam.utils.MessageProperties;

import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchController extends BaseController{
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView search(Device device, HttpServletRequest request, HttpSession session) {
		String viewName = "";
		viewName = detectDevice(device);
		ModelAndView map = null;
		try {
			if (session.getAttribute("id_university") != null) {
				int idUniversity = (Integer) session.getAttribute("id_university");
				List<String> label = new ArrayList<String>();
				label.add(request.getParameter("pos1"));
				label.add(request.getParameter("pos2"));
				// init map
				MapLogic mapLogic = new MapLogic();
				map = mapLogic.initMap(viewName, idUniversity);
				SearchLogic searchLogic = new SearchLogic();
				
				if(request.getParameter("func").equals("1")) {
					List<Coordinates> lsSearch = new ArrayList<Coordinates>();
					//get position and store on session
					lsSearch = searchLogic.searchWay(label.get(0), label.get(1), map, idUniversity);
					map.addObject("search1", lsSearch.get(0));
					map.addObject("search2", lsSearch.get(1));
				} else {
					searchLogic.searchInfo(label, map, idUniversity);
				}
			} else {
				map = new ModelAndView("err_message");
				map.addObject("msg", MessageProperties.getData("not_found_u"));
			}
		} catch(Exception e) {
			map = new ModelAndView("err_message");
			map.addObject("msg", MessageProperties.getData("not_found_u"));
			return map;
		}
		return map;
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String notFoundSearch(Model model) {
		model.addAttribute("msg", MessageProperties.getData("not_found_page"));
		return "err_message";
	}
	
	
}
