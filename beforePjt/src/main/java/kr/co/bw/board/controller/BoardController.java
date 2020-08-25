package kr.co.bw.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonObject;

import kr.co.bw.board.model.service.BoardServiceImpl;
import kr.co.bw.board.model.vo.TimeTableVO;

@Controller
@RequestMapping("/bw/board")
public class BoardController {
	@Autowired
	@Qualifier("boardService")
	private BoardServiceImpl service;

	@RequestMapping("/boardList.do")
	public String boardList() {
		return "board/boardList";
	}
	
	@RequestMapping("/timeTable.do")
	public String timeTable() {
		return "board/timeTable";
	}
	
	@ResponseBody
	@RequestMapping(value="/timeTableList.do", produces = "application/json; charset=utf-8")
	public List<TimeTableVO> timeTableList() {
		List<TimeTableVO> vo = service.selectList();
		return vo;
	}	
	
	 @RequestMapping("/test.do")
	 public String view() {
	     return "board/test";
	 }
}

















