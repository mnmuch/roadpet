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
public class PetInfoController {

	@Autowired
	PetInfoDAO dao;
	
	
	
	@RequestMapping("pet/pet_info_insert")
	public void insert(PetInfoVO pet_infoVO,Model model) throws IllegalStateException, IOException {
		dao.insert(pet_infoVO);
		model.addAttribute("pet_infoVO",pet_infoVO);
	}
	
	@RequestMapping("pet/pet_info_update")
	public String update(PetInfoVO pet_infoVO) {
		int result =dao.update(pet_infoVO);
		if(result==1) {
			return "pet_info_update";

		}
		else {
			return "redirect:pet_info_update.jsp";
		}
	}
	
	@RequestMapping("pet/one")
	public void one(int pet_id, Model model) {
		PetInfoVO dto = dao.one(pet_id);
		model.addAttribute("dto",dto);
	}
	
	@RequestMapping("pet/pet_info_delete")
	public void delete2(PetInfoVO pet_infoVO , Model model) {
	
		int result = dao.delete(pet_infoVO);//int
		model.addAttribute("result", result);
	}
	
}
