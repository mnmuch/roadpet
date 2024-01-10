package com.multi.roadpet.pet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;




@Controller
public class PetInfoController {

	@Autowired
	PetInfoService petinfoService;
	
	
	
	@RequestMapping("pet/pet_info_insert")
	public void insert(PetInfoVO petinfoVO,
			HttpServletRequest request,
			MultipartFile file,
			Model model) throws IllegalStateException, IOException {
		String savedName = file.getOriginalFilename();
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/upload");
		File target = new File(uploadPath + "/" +savedName);
		file.transferTo(target);
		model.addAttribute("savedName", savedName);
		System.out.println("img넣기전>>" + petinfoVO);
		petinfoVO.setPet_photo(savedName);
		System.out.println("img넣은 후>>" + petinfoVO);
		System.out.println(uploadPath);
		System.out.println(savedName);
		petinfoService.insert(petinfoVO);
		model.addAttribute("petinfoVO",petinfoVO);
	
	}
	
	@RequestMapping("pet/pet_info_update")
	public void update(Model model,
			int pet_id) throws IllegalStateException, IOException {
		/*
		 * String savedName = file.getOriginalFilename(); String uploadPath =
		 * request.getSession().getServletContext().getRealPath("/resources/upload");
		 * File target = new File(uploadPath + "/" +savedName); file.transferTo(target);
		 * model.addAttribute("savedName", savedName);
		 * petinfoVO.setPet_photo(savedName);
		 */
		PetInfoVO dto = petinfoService.one(pet_id);
		System.out.println(dto);
		model.addAttribute("dto",dto);
		
		
	}
	
	@RequestMapping("pet/pet_info_update2")
	public String update2(PetInfoVO petinfoVO,
			HttpServletRequest request,
			MultipartFile file,
			Model model) throws IllegalStateException, IOException {
		
		  String savedName = file.getOriginalFilename(); String uploadPath =
		  request.getSession().getServletContext().getRealPath("/resources/upload");
		  File target = new File(uploadPath + "/" +savedName); file.transferTo(target);
		  model.addAttribute("savedName", savedName);
		  petinfoVO.setPet_photo(savedName);
		 
		int result = petinfoService.update(petinfoVO);	
		if(result==1) {
			return "pet/pet_info_update2";
		}
		else {
			return "pet/redirect:pet_info_update.jsp";
		}
	}
	
	@RequestMapping("pet/pet_info_one")
	public void one(int pet_id, Model model) {
		PetInfoVO dto = petinfoService.one(pet_id);
		model.addAttribute("dto",dto);
	}
	
	@RequestMapping("pet/pet_info_delete")
	public void delete(PetInfoVO petinfoVO , Model model) {
		int result = petinfoService.delete(petinfoVO);//int
		model.addAttribute("result", result);
	}
	
	@RequestMapping("pet/pet_info_list")
	public void list(Model model) throws Exception { //view
		List<PetInfoVO> list = petinfoService.list();
		System.out.println(list.size());
		model.addAttribute("list", list);
	}
	
}
