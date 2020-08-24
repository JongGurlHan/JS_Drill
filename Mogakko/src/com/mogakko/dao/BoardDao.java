package com.mogakko.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mogakko.beans.ContentBean;
import com.mogakko.mapper.BoardMapper;

@Repository
public class BoardDao {
	
	@Autowired
	private BoardMapper boardMapper;
	
	public void addContentInfo(ContentBean writeContentBean) {		
		boardMapper.addContentInfo(writeContentBean);		
	}
	//게시판 이름 가져오기
	public String getBoardInfoName(int board_info_idx) {
		return boardMapper.getBoardInfoName(board_info_idx);
	}
	//게시판 리스트 가져오기
	public List<ContentBean> getContentList(int board_info_idx){
		return boardMapper.getContentList(board_info_idx);
		
	}
	//게시글 정보 가져오기
	public ContentBean getContentInfo(int board_info_idx) {
		return boardMapper.getContentInfo(board_info_idx);
	}
	
	//게시글 수정하기
	public void modifyContentInfo(ContentBean modifyContentBean) {
		boardMapper.modifyContentInfo(modifyContentBean);
	}
	
	

}
