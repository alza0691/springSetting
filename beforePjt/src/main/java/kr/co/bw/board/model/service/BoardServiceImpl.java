package kr.co.bw.board.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.bw.board.model.dao.BoardDaoImpl;
import kr.co.bw.board.model.vo.TimeTableVO;

@Service("boardService")
public class BoardServiceImpl {
	@Autowired
	@Qualifier("boardDao")
	private BoardDaoImpl dao;

	public List<TimeTableVO> selectList() {
		// TODO Auto-generated method stub
		return dao.selectList();
	}
	
}










