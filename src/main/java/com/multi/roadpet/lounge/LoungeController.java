package com.multi.roadpet.lounge;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoungeController {
	
	@Autowired
	LoungeService loungeService;
	
	@RequestMapping("lounge/insert")
	public void insert(LoungeVO loungeVO) {
		loungeService.insert(loungeVO);	
	}

	@RequestMapping("lounge/update")
	public void update(LoungeVO loungeVO,Model model) {
		LoungeVO bag = loungeService.one(loungeVO);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("lounge/updateTr")
	public String updateTr(LoungeVO loungeVO) {
		loungeService.update(loungeVO);
		return "redirect:one?lounge_id=" + loungeVO.getLounge_id();	
	}
	
	@RequestMapping("lounge/delete")
	public void delete(LoungeVO loungeVO) {
		loungeService.delete(loungeVO);
	}
	
	@RequestMapping("lounge/list")
	public void list(@RequestParam(value = "searchType", required = false) String searchType,
					 @RequestParam(value = "keyWord", required = false) String keyWord, LoungePageVO loungePageVO ,Model model) throws Exception {	
		loungePageVO.setSearchType(searchType);
		loungePageVO.setKeyWord(keyWord);
		System.out.println("검색유형>>" + searchType + "  검색어>>" + keyWord);
		loungePageVO.setStartEnd();
		List<LoungeVO> list = loungeService.list(loungePageVO);
		int count = loungeService.pageCount();
		System.out.println("게시물 개수>>" + count);
		int pages = count/5;
		if (count%5 != 0) {
			pages += 1;
		}
		model.addAttribute("list", list);	
		model.addAttribute("pages", pages);	
		model.addAttribute("count", count);	
		}
	
	@RequestMapping("lounge/pageList")
	public void pageList(@RequestParam(value = "searchType", required = false) String searchType,
						 @RequestParam(value = "keyWord", required = false) String keyWord, LoungePageVO loungePageVO ,Model model) throws Exception {
		loungePageVO.setSearchType(searchType);
		loungePageVO.setKeyWord(keyWord);
		loungePageVO.setStartEnd();
		List<LoungeVO> list = loungeService.list(loungePageVO);
		model.addAttribute("list", list);	
		}
	
	@RequestMapping("lounge/one")
	public void one(LoungeVO loungeVO, Model model) throws Exception {		
		LoungeVO bag = loungeService.one(loungeVO);
		model.addAttribute("bag", bag);
	}
	
}
