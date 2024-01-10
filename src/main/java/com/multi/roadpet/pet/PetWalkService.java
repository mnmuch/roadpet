package com.multi.roadpet.pet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PetWalkService {

	@Autowired
	PetWalkDAO dao;
	
	public void insert(PetWalkVO petwalkVO) {
		dao.insert(petwalkVO);
	}
	public PetWalkVO one(int pet_id) { //id=4
		return dao.one(pet_id);
	}
}
