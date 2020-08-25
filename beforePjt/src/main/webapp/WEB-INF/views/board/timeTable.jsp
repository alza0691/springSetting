<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type='text/javascript' src='http://code.jquery.com/jquery-3.3.1.js'></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	* { 
		box-sizing: border-box; 
	}
	.timetable_view_list{
		border : 1px solid black;
	}
	
	.cate{
		width : 120px;
		border: 0;
	}
	.class_time, tbody td{
		height : 60px;
		float : left;
		width : 100%;
		background-size: 10% 10%;
		background-repeat: repeat;
		background-color: #fff;
		background-image: url(https://ssl.pstatic.net/static/calendar/2016/line_timetable.png);
	}
	
	._week{
		vertical-align : top;
		height : 600px;
		float : left;
		width : 120px;
		display: table-cell;
		border: 1px solid black;
	}
	
	.class_time>*{
		display : block;
		width : 120px;
		text-align : right;
		font-size: 13px;
		padding-right: 8px;
	}
	
	.class_time{
		border: 1px solid black;
	}
	th{
		height : 25px;
		border: 1px solid black; 
		width: 120px;
	}
	
	._lesson{
		border: 1px solid black;
	}
	
	
</style>
<body>


	<div id="holder" class="holder" style="display: block;">
		<div class="timetable_view" style="min-width: 780px" sectionid="timetable">
			<div class="_timetable_container view_content">
				<div class="timetable_view_list">
					<div class="_timetable_header t_header">
						<table cellpadding="0" cellspacing="0">
							<caption class="no_view">요일</caption>
							<tbody>
								<tr>
									<th class="cate"></th>
									<th>월</th>
									<th>화</th>
									<th>수</th>
									<th>목</th>
									<th>금</th>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="_timetable_content t_contents" style="height: 700px;">
						<table cellpadding="0" cellspacing="0">
							<caption class="no_view">시간표</caption>
							<tbody>
								<tr>
									<td class="cate">
										<div class="class_time">
											<strong>1교시</strong> 
											<em>오전</em> 
											<span> 9시</span>
										</div>
										<div class="class_time">
											<strong>2교시</strong> 
											<em></em> 
											<span> 10시</span>
										</div>
										<div class="class_time">
											<strong>3교시</strong> 
											<em></em> 
											<span> 11시</span>
										</div>
										<div class="class_time">
											<strong>4교시</strong> 
											<em>오후</em> 
											<span> 12시</span>
										</div>
										<div class="class_time">
											<strong>5교시</strong> 
											<em></em> 
											<span> 1시</span>
										</div>
										<div class="class_time">
											<strong>6교시</strong> 
											<em></em> 
											<span> 2시</span>
										</div>
										<div class="class_time">
											<strong>7교시</strong> 
											<em></em> 
											<span> 3시</span>
										</div>
										<div class="class_time">
											<strong>8교시</strong> 
											<em></em> 
											<span> 4시</span>
										</div>
										<div class="class_time">
											<strong>9교시</strong> 
											<em></em> 
											<span> 5시</span>
										</div>
										<div class="class_time">
											<strong>10교시</strong> 
											<em></em> 
											<span> 6시</span>
										</div>
									</td>
									<td class="_week" colindex="0">
										<div class="subject_list _column_0">
											<div style="top: 0px; left: 0px; width: 66px; height: 165px;" class="_lesson schedule_box calendar_color_14479e" key="20200814T084345Z-120329@naver002_0">
												<div style="height: 165px;">
													<div class="schedule_top">
														<span class="_start_time date">오전 09:00</span>
													</div>
													<div class="subject_name">
														<a href="#" onclick="return false;"	ondragstart="return false;" class="_title_text " title="">
															<strong>ㅁㅁㅁ</strong> 
															<em></em>
														</a>
													</div>
												</div>
											</div>
<!-- 											<div style="top: 85px; left: 70px; width: 64px; height: 80px;" class="_lesson schedule_box calendar_color_14479e" key="20200814T084348Z-120329@naver002_0"> -->
<!-- 												<div style="height: 80px;"> -->
<!-- 													<div class="schedule_top"> -->
<!-- 														<span class="_start_time date">오전 10:00</span> -->
<!-- 													</div> -->
<!-- 													<div class="subject_name"> -->
<!-- 														<a href="#" onclick="return false;" ondragstart="return false;" class="_title_text " title=""> -->
<!-- 															<strong>제목없음</strong>  -->
<!-- 															<em></em> -->
<!-- 														</a> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
											<div style="width: 120px; height: 207px; position: absolute; top: 300px; left: 130px" class="_lesson schedule_box calendar_color_d19b22" key="20200814T084359Z-169056@naver012_0">
												<div style="height: 207px;">
													<div class="schedule_top">
														<span class="_start_time date">오후 12:00</span>
													</div>
													<div class="subject_name">
														<a href="#" onclick="return false;" ondragstart="return false;" class="_title_text " title="">
															<strong>제목없음</strong> 
															<em></em>
														</a>
													</div>
												</div>
											</div>
										</div>
									</td>
									<td class="_week" colindex="1">
										<div class="subject_list _column_1"></div>
									</td>
									<td class="_week" colindex="2">
										<div class="subject_list _column_2"></div>
									</td>
									<td class="_week" colindex="3">
										<div class="subject_list _column_3"></div>
									</td>
									<td class="_week" colindex="4">
										<div class="subject_list _column_4"></div>
									</td>
									
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/template">
	<div style="top: 85px; left: 70px; width: 64px; height: 80px;" class="_lesson schedule_box calendar_color_14479e" key="20200814T084348Z-120329@naver002_0">
		<div style="height: 80px;">
			<div class="schedule_top">
				<span class="_start_time date">오전 10:00</span>
			</div>
			<div class="subject_name">
				<a href="#" onclick="return false;" ondragstart="return false;" class="_title_text " title="">
					<strong>제목없음</strong> 
					<em></em>
				</a>
			</div>
		</div>
	</div>
</script>
<script type="text/javascript">
	$(document).ready(function() {
		
	});
</script>
</html>