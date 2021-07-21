package com.burger.location.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LocationDAOImpl implements LocationDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void insertLocation(LocationDTO loc) {
		
		this.sqlSession.insert("insertLocation", loc);
	}

	@Override
	public List<LocationDTO> getMyLocationList(String user_id) {
		
		return this.sqlSession.selectList("myLocList", user_id);
	}

	@Override
	public void deleteLocation(int loc_no) {
		
		this.sqlSession.delete("deleteLocation", loc_no);
	}

}