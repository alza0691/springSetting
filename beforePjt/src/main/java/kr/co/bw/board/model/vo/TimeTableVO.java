package kr.co.bw.board.model.vo;

import lombok.Data;

@Data
public class TimeTableVO {
	private int lectureNo;
	private String lectureName;
	private String lectureDay;
	private int lectureTime;
	private String lectureStartTime;
	private String lectureEndTime;
	private String lectureLecturer;
	private int lectureRoom;
}
