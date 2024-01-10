package com.multi.roadpet.map;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MissingController {

	@Autowired
	MissingService missingService;
	
	@RequestMapping(value="map",produces = "application/json") //all 검색 
	@ResponseBody
	public List<MissingVO> all() {
		return missingService.all();
	}

}
