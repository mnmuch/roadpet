package com.multi.roadpet.lounge;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class LoungeService {
	
	@Autowired
	LoungeDAO loungeDAO;
	
	public void insert(LoungeVO loungeVO) {
		loungeDAO.insert(loungeVO);
	}
	
	public void update(LoungeVO loungeVO) {
		loungeDAO.update(loungeVO);
	}
	
	public void delete(LoungeVO loungeVO) {
		loungeDAO.delete(loungeVO);
	}
	
	public List<LoungeVO> list(LoungePageVO loungePageVO) {		
		return loungeDAO.list(loungePageVO);
	}
	
	public LoungeVO one(LoungeVO loungeVO) {
		return loungeDAO.one(loungeVO);
	}
	
	public int pageCount() {
		 return loungeDAO.count();
		}
}
