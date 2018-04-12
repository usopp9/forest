<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mainSection.css">
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/jqwidget/jquery.bxslider.min.js"></script>

<script>
    /* 메인 - 휴양림 슬라이드 (네비게이션)*/
    $(document).ready(function() {
    
    	
    	
        var name = $('#mainSlider>#mainSlider-navi>ul>li');
            name.click(function(){
            $(this).addClass('on');
            name.not(this).removeClass('on');
            });
            
            var mySlider =	$('.mainSlider_area_ul').bxSlider({
				maxSlides:4, //슬라이드 수
				slideWidth : 280, //슬라이드 사이즈
				slideMargin:20, //슬라이드마다 마진을 줌
				auto : false,// 자동으로 움직임
				pause:2000, //잠시 정지
				speed:500,//0.5초동안 움직이게
				autoControls : true, //
				captions : true, //밑에 글자나오게 
				pager : false,
            	autoHover: true,
		
            });
            
          //서울경기 빼고 나머지들 display none
         	$("#listGangwon").css("display","none");
            $("#listChungbuk").css("display","none");
            $("#listChungnam").css("display","none");
            $("#listJeonbuk").css("display","none");
            $("#listJeonnam").css("display","none");
            $("#listGyeongbuk").css("display","none");
            $("#listGyeongnam").css("display","none");         
            
      
	 $("#mainSlider #mainSlider-navi .nav1 a").click(function(){
		$("#listSGyeonggi").css("display","block");
		$("#listGangwon").css("display","none");
		$("#listChungbuk").css("display","none");
	    $("#listChungnam").css("display","none");
	    $("#listJeonbuk").css("display","none");
	    $("#listJeonnam").css("display","none");
	    $("#listGyeongbuk").css("display","none");
	    $("#listGyeongnam").css("display","none"); 
	
	})
	$("#mainSlider #mainSlider-navi .nav2 a").click(function(){
		$("#listSGyeonggi").css("display","none");
		$("#listGangwon").css("display","block");
		$("#listChungbuk").css("display","none");
	    $("#listChungnam").css("display","none");
	    $("#listJeonbuk").css("display","none");
	    $("#listJeonnam").css("display","none");
	    $("#listGyeongbuk").css("display","none");
	    $("#listGyeongnam").css("display","none"); 
	}) 
	 $("#mainSlider #mainSlider-navi .nav3 a").click(function(){
		$("#listSGyeonggi").css("display","none");
		$("#listGangwon").css("display","none");
		$("#listChungbuk").css("display","block");
	    $("#listChungnam").css("display","none");
	    $("#listJeonbuk").css("display","none");
	    $("#listJeonnam").css("display","none");
	    $("#listGyeongbuk").css("display","none");
	    $("#listGyeongnam").css("display","none"); 
	}) 
	$("#mainSlider #mainSlider-navi .nav4 a").click(function(){
		$("#listSGyeonggi").css("display","none");
		$("#listGangwon").css("display","none");
		$("#listChungbuk").css("display","none");
	    $("#listChungnam").css("display","block");
	    $("#listJeonbuk").css("display","none");
	    $("#listJeonnam").css("display","none");
	    $("#listGyeongbuk").css("display","none");
	    $("#listGyeongnam").css("display","none");
	}) 
	$("#mainSlider #mainSlider-navi .nav5 a").click(function(){
		$("#listSGyeonggi").css("display","none");
		$("#listGangwon").css("display","none");
		$("#listChungbuk").css("display","none");
	    $("#listChungnam").css("display","none");
	    $("#listJeonbuk").css("display","block");
	    $("#listJeonnam").css("display","none");
	    $("#listGyeongbuk").css("display","none");
	    $("#listGyeongnam").css("display","none");
	}) 
	$("#mainSlider #mainSlider-navi .nav6 a").click(function(){
		$("#listSGyeonggi").css("display","none");
		$("#listGangwon").css("display","none");
		$("#listChungbuk").css("display","none");
	    $("#listChungnam").css("display","none");
	    $("#listJeonbuk").css("display","none");
	    $("#listJeonnam").css("display","block");
	    $("#listGyeongbuk").css("display","none");
	    $("#listGyeongnam").css("display","none");
	}) 
	$("#mainSlider #mainSlider-navi .nav7 a").click(function(){
		$("#listSGyeonggi").css("display","none");
		$("#listGangwon").css("display","none");
		$("#listChungbuk").css("display","none");
	    $("#listChungnam").css("display","none");
	    $("#listJeonbuk").css("display","none");
	    $("#listJeonnam").css("display","none");
	    $("#listGyeongbuk").css("display","block");
	    $("#listGyeongnam").css("display","none");
	}) 
	$("#mainSlider #mainSlider-navi .nav8 a").click(function(){
		$("#listSGyeonggi").css("display","none");
		$("#listGangwon").css("display","none");
		$("#listChungbuk").css("display","none");
	    $("#listChungnam").css("display","none");
	    $("#listJeonbuk").css("display","none");
	    $("#listJeonnam").css("display","none");
	    $("#listGyeongbuk").css("display","none");
	    $("#listGyeongnam").css("display","block");
	}) 
	
	
   
});
 
            
         
        	
        		
        		
        		
        		
        		
        		
   
</script>
</head>
<body>
	<section id="mainSection">
	
	<!-- section top부분 "눈부신 햇살이 숲을 깨움"까지 -->	
	<div id="topBGSection">
	<div id="bgOpacity">
		<div id="sunshineTitle">
			<p>숲속의 속삭임을 느껴보세요.</p>
			<p>눈부신 햇살이 숲을 깨움</p>
		</div>
	</div>
	</div>
	
	<!-- section top부분 지역 누르면 빨간 아이콘이 나옴 -->	
	<div id="mainSlider">
		<div id="mainSlider-navi">
			<div id="inner-line"></div>
			<ul>
				<li class="nav1">
					<a href="#">
						<span class="text">서울/경기</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav2">
					<a href="#">
						<span class="text">강원</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav3">
					<a href="#">
						<span class="text">충북</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav4">
					<a href="#">
						<span class="text">충남</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav5">
					<a href="#">
						<span class="text">전북</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav6">
					<a href="#">
						<span class="text">전남</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav7">
					<a href="#">
						<span class="text">경북</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav8">
					<a href="#">
						<span class="text">경남</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
			</ul>
		</div>
		<div id="mainSliderStart">
			<div class="mainSlider_area_1">
				<div class="mainSlider_area_wrapper" id="listSGyeonggi">
					
						<c:if test="${listSGyeonggi.size() > 0 }">
							<ul class="mainSlider_area_ul">
							<c:forEach var="item" items="${listSGyeonggi }">
							
								<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/${item.forPic }">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>${item.forName }</dt>
									<dd>${item.forDetail }</dd>
								</dl>
							</div>
						</li>
							</c:forEach>
							</ul>
						</c:if>
					</div>
					<div class="mainSlider_area_wrapper" id="listGangwon">
						<c:if test="${listGangwon.size() > 0 }">
						<ul class="mainSlider_area_ul">
							<c:forEach var="item" items="${listGangwon }">
								<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/${item.forPic }">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>${item.forName }</dt>
									<dd>${item.forDetail }</dd>
								</dl>
							</div>
						</li>
							</c:forEach>
							</ul>
						</c:if>
				</div>
				<div class="mainSlider_area_wrapper" id="listChungbuk">
						<c:if test="${listChungbuk.size() > 0 }">
						<ul class="mainSlider_area_ul">
							<c:forEach var="item" items="${listChungbuk }">
								<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/${item.forPic }">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>${item.forName }</dt>
									<dd>${item.forDetail }</dd>
								</dl>
							</div>
						</li>
							</c:forEach>
							</ul>
						</c:if>
				</div>
			<div class="mainSlider_area_wrapper" id="listChungnam">
						<c:if test="${listChungnam.size() > 0 }">
						<ul class="mainSlider_area_ul">
							<c:forEach var="item" items="${listChungnam }">
								<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/${item.forPic }">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>${item.forName }</dt>
									<dd>${item.forDetail }</dd>
								</dl>
							</div>
						</li>
							</c:forEach>
							</ul>
						</c:if>
				</div> 
				<div class="mainSlider_area_wrapper" id="listJeonbuk">
						<c:if test="${listJeonbuk.size() > 0 }">
						<ul class="mainSlider_area_ul">
							<c:forEach var="item" items="${listJeonbuk }">
								<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/${item.forPic }">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>${item.forName }</dt>
									<dd>${item.forDetail }</dd>
								</dl>
							</div>
						</li>
							</c:forEach>
							</ul>
						</c:if>
				</div>
					<div class="mainSlider_area_wrapper" id="listJeonnam">
						<c:if test="${listJeonnam.size() > 0 }">
						<ul class="mainSlider_area_ul">
							<c:forEach var="item" items="${listJeonnam }">
								<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/${item.forPic }">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>${item.forName }</dt>
									<dd>${item.forDetail }</dd>
								</dl>
							</div>
						</li>
							</c:forEach>
							</ul>
						</c:if>
				</div>
					<div class="mainSlider_area_wrapper" id="listGyeongbuk">
						<c:if test="${listGyeongbuk.size() > 0 }">
						<ul class="mainSlider_area_ul">
							<c:forEach var="item" items="${listGyeongbuk }">
								<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/${item.forPic }">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>${item.forName }</dt>
									<dd>${item.forDetail }</dd>
								</dl>
							</div>
						</li>
							</c:forEach>
							</ul>
						</c:if>
				</div>
					<div class="mainSlider_area_wrapper" id="listGyeongnam">
						<c:if test="${listGyeongnam.size() > 0 }">
						<ul class="mainSlider_area_ul">
							<c:forEach var="item" items="${listGyeongnam }">
								<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/${item.forPic }">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>${item.forName }</dt>
									<dd>${item.forDetail }</dd>
								</dl>
							</div>
						</li>
							</c:forEach>
							</ul>
						</c:if>
				</div>
			</div>
			
		</div>
	
	</div>
	
	
	
	<!-- section bottom부분 아이콘 선택 -->	
		<div id="iconDetails">
			<ul>
				<li>
					<a href="#">
						<img src="css/images/mainImages/monitor.png"><br>
						<span>휴양림 공지 사항</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/intro.png"><br>
						<span>휴양림별 안내</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/recommand.png"><br>
						<span>추천 휴양림</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/library.png"><br>
						<span>산림 문화 교육</span>
					</a>
				</li>
				<li>
					<a href="reservation.do">
						<img src="css/images/mainImages/firstCome.png"><br>
						<span>선착순 예약</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/wheelchair.png"><br>
						<span>장애인 예약</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/finger.png"><br>
						<span>추첨제</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/review3.png"><br>
						<span>이용 및 체험 후기</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/newspaper.png"><br>
						<span>설문 조사</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/question.png"><br>
						<span>자주하는 질문</span>
					</a>
				</li>
			</ul>
		</div>
	</section>
</body>
</html>