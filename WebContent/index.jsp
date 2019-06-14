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
    <section class="d-flex flex-column justify-content-between" id="first" style="width: 100%;height: 100vh;background-position: center;background-size: cover;background-repeat: no-repeat;background-image: url(&quot;img/main.jpg&quot;);">
        <div id="first-top">
            <nav class="navbar navbar-dark navbar-expand-md">
                <div class="container-fluid"><a class="navbar-brand" href="index.jsp"><i class="fa fa-cube"></i>블랙박스</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div
                        class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="index.jsp">Main</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="about.jsp">About</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="contact.jsp">Contact</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="apply.jsp">Apply</a></li>
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
        <h1 class="display-4 text-center text-white" data-aos="fade-up" id="first-heading">&lt;블랙박스&gt;</h1>
        <h1 class="text-center text-white" data-aos="fade-up" data-aos-delay="50" id="second-heading">무엇이든 가능한 곳</h1>
        </div>
        <div id="first-bottom">
            <div class="container" data-aos="fade-up" data-aos-delay="100">
                <div class="row no-gutters">
                    <div class="col">
                        <p class="text-center text-white font-weight-bold"><i class="fa fa-laptop"></i>개발</p>
                        <p class="text-center text-white">기본부터 실무</p>
                    </div>
                    <div class="col with-borders">
                        <p class="text-center text-white font-weight-bold"><i class="fa fa-picture-o"></i>디자인</p>
                        <p class="text-center text-white">도안과 포토샵</p>
                    </div>
                    <div class="col with-borders">
                        <p class="text-center text-white font-weight-bold"><i class="fa fa-edit"></i>기획</p>
                        <p class="text-center text-white">사업계획서부터 시안</p>
                    </div>
                    <div class="col">
                        <p class="text-center text-white font-weight-bold"><i class="fa fa-line-chart"></i>판매</p>
                        <p class="text-center text-white">상품 구상부터 판매</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col text-center" style="height: 36px;"><a class="btn active btn-block text-white" style="font-size: 30px;" href="#second"><i class="fa fa-angle-double-down"></i></a></div>
                </div>
            </div>
        </div>
    </section>
    <section id="second">
        <div class="row no-gutters images-grid" style="margin: 10px;">
            <div class="col-md-8" data-aos="fade-up"><img class="rounded img-fluid" src="img/programming2.jpg"></div>
            <div class="col" data-aos="fade-up" data-aos-delay="50" style="margin: 10px;">
                <h2 class="text-left text-white font-weight-bold" style="margin: 5px;">Programming</h2>
                <p class="text-left text-white" style="padding: 10px;margin: 20px 5px 5px;">블랙박스에서는 다양한 프로그래밍을 배울 수 있습니다. 웹개발 부터 모바일 게임 개발까지 다양한 분야를 학습 할 수 있습니다.
                <br><br>C#, Python 등의 언어를 함게 공부하고, Unity 등의 툴을 이용해 자신만의 앱을 개발하고 배포할 수 있습니다. 팀원들과 다양한 아이디어를 공유하며 아이디어를 발전시켜 보세요.
                <br><br>React, Vue.js 등의 최신 트렌드에 맞춘 라이브러리들을 함께 익히고 실습하며 많은 프로젝트를 이곳에서 진행할 수 있습니다. 창업 아이디어가 다양한 만큼 웹개발자도 바쁘게 움직이는 블랙박스!
                </p>
            </div>
        </div>
        <div class="row no-gutters images-grid images-grid-left" style="margin: 10px;">
            <div class="col-md-8" data-aos="fade-up" id="images-grid-left-1"><img class="rounded img-fluid" src="img/plan.jpg"></div>
            <div class="col" data-aos="fade-up" data-aos-delay="50" id="images-grid-left-2" style="margin: 10px;">
                <h2 class="text-left text-white font-weight-bold" style="margin: 5px;">Planning</h2>
                <p class="text-left text-white" style="padding: 10px;margin: 20px 5px 5px;">상상한 모든 것을 현실화 할 수 있습니다. &nbsp;개인 프로젝트, 학교 축제 사업, 서강 비즈니스 센터 연계 사업 등 다양한 사업을 창조해 보세요.
                <br><br>악세사리, 옷 디자인 등 패션 사업의 디자인부터 실제 유통까지, 모바일, 웹앱 등의 기획, 개발 부터 실제 배포까지 폭 넓은 사업 진행이 가능합니다.
                <br><br>또한, 이미 사회에 진출해 성공을 거두신 선배님들과의 만날 수 있는 기회인 홈커밍 데이, 서강비즈니스센터 등과의 협업 등을 통해 자신의 아이디어를 세상에 피력할 수도 있습니다.
                </p>
            </div>
        </div>
        <div class="row no-gutters images-grid" style="margin: 10px;">
            <div class="col-md-8" data-aos="fade-up"><img class="rounded img-fluid" src="img/design.jpg"></div>
            <div class="col" data-aos="fade-up" data-aos-delay="50" style="margin: 10px;">
                <h2 class="text-left text-white font-weight-bold" style="margin: 5px;">Design</h2>
                <p class="text-left text-white" style="padding: 10px;margin: 20px 5px 5px;">창의력을 마음껏 뽐내보세요. 축제 사업 디자인, 홍보물 제작, 블랙박스 내부 각종 행사 팜플렛 제작 등 수많은 경험들을 통해 디자이너로서 성장한 자신을 볼 수 있을 것입니다.
                <br><br>Sketch, Adobe Photoshop 등 다양한 툴의 사용법을 익히고 선배들의 노하우를 얻어갈 수 있는 좋은 기회입니다. 실무에서는 어떤 방식으로 툴을 이용하는지, 각종 상황에서 어떤 것이 선호되는지 등을 이해하고 얻어가실 수 있을 것입니다.

                <br><br>
                </p>
            </div>
        </div>
        <div class="row no-gutters images-grid images-grid-left" style="margin: 10px;">
            <div class="col-md-8" data-aos="fade-up" id="images-grid-left-1"><img class="rounded img-fluid" src="img/commerce.jpg"></div>
            <div class="col" data-aos="fade-up" data-aos-duration="50" id="images-grid-left-2" style="margin: 10px;">
                <h2 class="text-left text-white font-weight-bold" style="margin: 5px;">Commerce</h2>
                <p class="text-left text-white" style="padding: 10px;margin: 20px 5px 5px;">이곳이 왜 '동아리'가 아닌 '돈아리'로 불리는지 알고 계시겠죠? 다양한 연계 사업, 자체 프로젝트, 각종 온,오프라인 판매 등 와서 진정한 창업동아리를 경험하세요.
                <br><br>또한, 단순히 학교축제 등 단기적인 판매로 끝나는 것이 아닌 자체 플랫폼을 이용해 축제 기간이 아니더라도 수익을 만들 수 있습니다. 블랙박스에서 직접 수익을 만들며 경제의 흐름을 직접 느껴보세요.
                </p>
            </div>
        </div>
    </section>
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
