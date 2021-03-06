package com.burger.event.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.burger.cs.model.PageDTO;

@Repository
public class EventDAOImpl implements EventDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int getListCount() {
		return this.sqlSession.selectOne("e_count");
	}
	@Override
	public int getListCount2() {
		return this.sqlSession.selectOne("e_count2");
	}
	@Override
	public int getListCount3() {
		return this.sqlSession.selectOne("e_count3");
	}

	@Override
	public List<EventDTO> getEventList(PageDTO dto) {
		return this.sqlSession.selectList("e_list", dto);
	}

	@Override
	public List<EventDTO> getEventList2(PageDTO dto) {
		return this.sqlSession.selectList("e_list2", dto);
	}
	

	@Override
	public List<EventDTO> getEventList3(PageDTO dto) {
		return this.sqlSession.selectList("e_list3", dto);
	}

	
	@Override
	public int insertEvent(EventDTO dto) {
		return this.sqlSession.insert("e_add", dto);
	}

	@Override
	public void readCount(int no) {
		this.sqlSession.update("e_read", no);
		
	}

	@Override
	public EventDTO eventCont(int no) {
		return this.sqlSession.selectOne("e_content", no);
	}

	@Override
	public int updateEvent(EventDTO dto) {
		return this.sqlSession.update("e_edit", dto);
	}

	@Override
	public int deleteEvent(int no) {
		return this.sqlSession.delete("e_del", no);
	}

	@Override
	public void reSequence(int no) {
		this.sqlSession.update("e_seq", no);
		
	}

	
	
	

}
