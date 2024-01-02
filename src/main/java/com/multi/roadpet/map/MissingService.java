package com.multi.roadpet.map;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
public class MissingService {

	@Autowired
	MissingDAO dao;
	
	//전체리스트 가지고 오는 기능 
	public List<MissingVO> all() {
		return dao.all();
	}
}
