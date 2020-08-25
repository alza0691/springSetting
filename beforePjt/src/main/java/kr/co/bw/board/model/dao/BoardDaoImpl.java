package kr.co.bw.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bw.board.model.vo.TimeTableVO;

@Repository("boardDao")
public class BoardDaoImpl {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<TimeTableVO> selectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("board.selectList");
	}

}
