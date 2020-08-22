package com.mogakko.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mogakko.beans.BoardInfoBean;
import com.mogakko.mapper.TopMenuMapper;

@Repository
public class TopMenuDao {

	@Autowired
	private TopMenuMapper topMenuMapper;
	
	public List<BoardInfoBean> getTopMenuList(){
		
		List<BoardInfoBean> topMenuList = topMenuMapper.getTopMenuList();
	
		return topMenuList;
	}
	
	
}
