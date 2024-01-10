package com.multi.roadpet.pet;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class PetWalkController {

	@Autowired
	PetWalkService petwalkService;
	
	@RequestMapping("pet/pet_walk_insert")
	public void insert(PetWalkVO petwalkVO,	Model model) throws IllegalStateException, IOException {
		petwalkService.insert(petwalkVO);
		model.addAttribute("petWalkVO",petwalkVO);
	
	}
	
	@RequestMapping("pet/pet_walk_one")
	public void one(int pet_id, Model model) {
		PetWalkVO dto = petwalkService.one(pet_id);
		System.out.println(dto);
		model.addAttribute("dto",dto);
	}
}
