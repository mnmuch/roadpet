package com.multi.roadpet.pet;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;





@Service
public class PetInfoService {

	@Autowired
	PetInfoDAO dao;
	
	public void insert(PetInfoVO petInfoVO) {
		dao.insert(petInfoVO);
	}
	
	public int update(PetInfoVO petInfoVO) {
		int result = dao.update(petInfoVO);
		return result;
	}
	public PetInfoVO one(int pet_id) { //id=4
		return dao.one(pet_id);
	}
	public int delete(PetInfoVO petInfoVO) {
		int result = dao.delete(petInfoVO);
		
		return result;
	}
	public List<PetInfoVO> list() throws Exception {
		List<PetInfoVO> list = dao.list();
		
		return list;
	}

	
	
}