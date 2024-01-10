package com.multi.roadpet.story;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class PetStoryDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(PetStoryVO petstoryVO) {
		int result = my.insert("petstory.create", petstoryVO);
		return result;
	}
	// 리스트 전체 보기
	public List<PetStoryVO> list() throws Exception {
		List<PetStoryVO> list = my.selectList("petstory.list");
		return list;
		}
	/*
	 * // 리스트 전체 보기 public List<PetStoryVO> list() throws Exception {
	 * List<PetStoryVO> list = my.selectList("product.list"); return list; }
	 * 
	 * // 리스트 중에서 선택한 물건 하나 보기 public PetStoryVO one(PetStoryVO productVO) throws
	 * Exception{ PetStoryVO vo2 = my.selectOne("product.one", productVO); return
	 * vo2; }
	 */
	/*
	 * 
	 * public int update(BbsDTO dto) { int result = my.update("bbs.update", dto);
	 * return result;
	 * 
	 * }
	 * 
	 * 
	 * public int delete(BbsDTO dto) { int result = my.delete("bbs.delete", dto);
	 * return result;
	 * 
	 * }
	 * 
	 *  public BbsDTO one(BbsDTO dto) throws Exception { //
	 * 3.SQL문 결정/생성 BbsDTO dto2 = my.selectOne("bbs.one", dto); return dto2; }
	 */
}
