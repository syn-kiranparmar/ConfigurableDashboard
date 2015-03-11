package main.com.metlife.pol.web.controller;

import main.com.metlife.pol.exception.PoLException;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContentAuthorController {

	private static Logger log = Logger.getLogger(ContentAuthorController.class.getName());
		
	@RequestMapping(value = "/contentAuthor", method = RequestMethod.GET)
	@ExceptionHandler({PoLException.class})
	public String getContentAuthorView(ModelMap model) {
		return "contentAuthor";
	}
	
	@RequestMapping(value = "/contentAuthorDashboard")
	@ExceptionHandler({PoLException.class})
	public String getContentAuthorDashboard(ModelMap model) {

		log.debug("Entering getContentAuthorDashboard");		
		
		log.debug("Exiting getContentAuthorDashboard");
		return "contentAuthor/contentAuthorDashboard";
	}
}
