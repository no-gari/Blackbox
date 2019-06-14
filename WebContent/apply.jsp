<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
  <head>
      <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"> <meta name="description" content="서강대학교 창업동아리 블랙박스
    서강대학교 유일의 ‘창업동아리’ 블랙박스는 「기업가 정신을 갖춘 글로벌 창업인재를 육성한다」는 비전 아래 19년의 전통을 이어오고 있습니다.">
      <link rel="shortcut icon" type="image/x-icon" href="img/logo.png">
      <title>sgublackbox</title>
      <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <script src="bootstrap/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="fonts/font-awesome.min.css">
      <link rel="stylesheet" href="fonts/ionicons.min.css">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gugi">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nanum+Gothic">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Serif+KR">
      <link rel="stylesheet" href="css/Footer-Dark.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
      <link rel="stylesheet" href="https://unpkg.com/@bootstrapstudio/bootstrap-better-nav/dist/bootstrap-better-nav.min.css">
      <link rel="stylesheet" href="css/styles.css">
      <script src="https://kit.fontawesome.com/a618bd173b.js"></script>
  </head>

<body style="background-color: #343434;">
	<%
		String userID = null;
		if (session.getAttribute("userID") !=null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
    <section class="d-flex flex-column justify-content-between" id="first" style="background-position: center;background-size: cover;background-repeat: no-repeat;background-image: url(&quot;img/main.jpg&quot;);">
        <div id="first-top">
            <nav class="navbar navbar-dark navbar-expand-md">
                <div class="container-fluid"><a class="navbar-brand" href="index.jsp"><i class="fa fa-cube"></i>블랙박스</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div
                        class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item" role="presentation"><a class="nav-link" href="index.jsp">Main</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="about.jsp">About</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="contact.jsp">Contact</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="apply.jsp">Apply</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="community.jsp">Community</a></li>
    <%
    	if (userID == null) {
    %>
                            <li class="nav-item dropleft">
                            <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-user-circle"></i></a>
                            	<div class="dropdown-menu bg-secondary" role="menu">
                            		<a class="dropdown-item text-white" role="presentation active" href="login.jsp">로그인</a>
                            		<a class="dropdown-item text-white" role="presentation" href="join.jsp">회원가입</a>
                            	</div>
                            </li>
    <%
    	} else {
    %>
                            <li class="nav-item dropleft">
                            <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-user-circle"></i></a>
                            	<div class="dropdown-menu bg-secondary" role="menu">
                            		<a class="dropdown-item text-white" role="presentation active" href="logoutAction.jsp">로그아웃</a>
                            	</div>
                            </li>
    <%
    	}
    %>
                		</ul>
                </div>
        </div>
        </nav>
        <h2 class="display-4 text-center text-white" data-aos="fade-down" id="first-heading">Apply</h2>
        <div class="container pb-3">
            <div class="jumbotron" data-aos="fade-down" style="background-color: rgba(255,255,255,0.73);">
                <h1 class="text-center" style="color: rgb(0,0,0);">지원안내</h1>
                <p style="color: rgb(76,81,87);">
               	  <bold>활동회원</bold>
               	  <ul>
               	  	<li>준회원: 새로 선발된 회원으로, 동아리 운영 부사수 및 모든 프로젝트에 참여 가능합니다</li>
               	  	<li>정회원: 2학기 이상 활동한 회원으로 동아리 운영진에 참여 가능합니다. 이 때 동아리 운영진은 2학기 이상 연임 할 수 있습니다</li>
               	  	<li>Senior: 3학기 이상 활동한 회원으로 블랙박스 자체 최대 행사인 홈커밍데이에 초청 자격이 주어집니다</li>
               	  </ul>
               	  <bold>주의 사항</bold>
               	  <ul>
               	  	<li>3진 아웃 제도: 3번 이상 사유 없이 불참 시 해당 프로젝트의 팀장에 의해 제명 위원회가 소집되고 이후 자동적으로 제명 될 수 있습니다</li>
               	  	<li>마음이 맞는 사람들끼리 프로젝트를 진행함에 있어 정기적인 만남이 불가피합니다. 매주 있을 정기적인 동아리 모임 이외에도 꼭 비는 시간을 만들어 주세요</li>
               	  </ul>
                </p>
                <a class="btn btn-dark text-white float-right" href="https://docs.google.com/forms/d/e/1FAIpQLSe_4RxmJIy0pXI1qEysOC3k6ttH9202FZg9Ws0j0sMXPP6vew/viewform?usp=sf_link">지원서 작성하기</a></div>
        </div>
        </section>
        <section id="second">
        <div class="container">
            <h1 class="text-center mb-5" data-aos="fade-down" style="color: white;">FAQ</h1>
            <div role="tablist" data-aos="fade-down" id="accordion-1" style="opacity: 0.67;">
                <div class="card">
                    <div class="card-header" role="tab">
                        <h5 class="mb-0"><a data-toggle="collapse" aria-expanded="true" aria-controls="accordion-1 .item-1" href="div#accordion-1 .item-1" style="color: rgb(0,0,0);">블랙박스는 뭐하는 동아리죠?</a></h5>
                    </div>
                    <div class="collapse show item-1" role="tabpanel" data-parent="#accordion-1">
                        <div class="card-body">
                            <p class="card-text">블랙박스는 수도권지역 최초 창업동아리로서,
							비즈니스 창업/공모전/대외활동/교육(스터디)/외부행사 총 5가지 분야에서 활동하며 창업을 위한 인사이트를 증진시키는 동아리입니다.
							또한 격주의 정기총회를 통해 이러한 활동을 브리핑하고 사업아이템을 기획 및 발표하게 됩니다.</p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" role="tab">
                        <h5 class="mb-0"><a data-toggle="collapse" aria-expanded="false" aria-controls="accordion-1 .item-2" href="div#accordion-1 .item-2" style="color: rgb(0,0,0);">블랙박스 하면 뭐가 좋나요?</a></h5>
                    </div>
                    <div class="collapse item-2" role="tabpanel" data-parent="#accordion-1">
                        <div class="card-body">
                            <p class="card-text">먼저 마음맞고 열정있는 친구와 손쉽게 공모전 팀원을 구성할 수 있습니다.
							참여하고 싶은 창업 관련 행사(대외활동, 포럼, 외부 공모전)정보는 저희가 지속적으로 공유해드립니다.
							포럼, 데모데이 등 혼자 가기 머쓱한 행사들도 블랙박스 소속으로 보다 편하게 참여 가능하며,
							(특히 개인으로는 신청할 수 없는 행사들이 블랙박스의 이름으로 초대되기도 합니다.)</p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" role="tab">
                        <h5 class="mb-0"><a data-toggle="collapse" aria-expanded="false" aria-controls="accordion-1 .item-3" href="div#accordion-1 .item-3" style="color: rgb(0,0,0);">진짜 창업하나요?</a></h5>
                    </div>
                    <div class="collapse item-3" role="tabpanel" data-parent="#accordion-1">
                        <div class="card-body">
                            <p class="card-text">네! 스마일게이트, 스터디서치, 오렌지팜 및 팩토리스캐너등 실제로 많은선배들이 벤처를 경영 중에 있습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" role="tab">
                        <h5 class="mb-0"><a data-toggle="collapse" aria-expanded="false" aria-controls="accordion-1 .item-4" href="div#accordion-1 .item-4" style="color: rgb(0,0,0);">웃음기 빼고 리얼 사업 구상만 하나요?</a></h5>
                    </div>
                    <div class="collapse item-4" role="tabpanel" data-parent="#accordion-1">
                        <div class="card-body">
                            <p class="card-text">친목과 유흥은 블랙박스의 핵심 요소입니다. 안심하고 회식 및 번개에 참여해주시면 됩니다.
							특히 매달 부서별로 주어지는 Monthly Mission을 통해 부원들과 다양한 추억을 쌓으실 수 있습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" role="tab">
                        <h5 class="mb-0"><a data-toggle="collapse" aria-expanded="false" aria-controls="accordion-1 .item-5" href="div#accordion-1 .item-5" style="color: rgb(0,0,0);">창업에 관심만 있어도 가입 가능할까요?</a></h5>
                    </div>
                    <div class="collapse item-5" role="tabpanel" data-parent="#accordion-1">
                        <div class="card-body">
                            <p class="card-text">물론 가능합니다! 부담없이 지원해 주세요. 다만, 이미 창업 역량을 갖고 계신다면 가입 후 프로젝트를 진행하실 때 해당 프로젝트의 팀장으로 역임하실 가능성이 더욱 높아지겠죠!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <hr style="color: rgb(255,255,255);background-color: #ffffff;">
    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 item text">
                        <h3><i class="fa fa-cube"></i>BLACKBOX</h3>
                        <p style="height: 50px;margin-bottom: 10px;"><br><br>04107&nbsp;서울특별시 마포구 백범로&nbsp;35&nbsp;(신수동) 서강대학교 엠마오관 130호&nbsp;<br><br></p>
                    </div>
                    <div class="col item social"><a href="https://www.facebook.com/iblackbox/?__tn__=%2Cd%3C-R&eid=ARAx1qi2QCSctJLH3MMm83T7egvAV4s71YjvQB949jxuPbdG6jwn4YiVFsiUfqymkRVByos4RtVe9QXK"><i class="fab fa-facebook-square"></i></a><a href="https://www.instagram.com/sgublackbox/"><i class="fab fa-instagram"></i></a><a href="contact.jsp"><i class="icon ion-email"></i></a></div>
                </div>
                <p class="copyright">BLACKBOX © 2019</p>
            </div>
        </footer>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/bs-animation.js"></script>
    <script src="js/Contact-Form-v2-Modal--Full-with-Google-Map.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    <script src="https://unpkg.com/@bootstrapstudio/bootstrap-better-nav/dist/bootstrap-better-nav.min.js"></script>
</body>

</html>
