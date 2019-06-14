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
      <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2309ae4d935e8543345ca2a72922ff7f"></script>
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
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="contact.jsp">Contact</a></li>
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
        <h2 class="display-4 text-center text-white" data-aos="fade-down" id="first-heading">Contact</h2>
        </div>
        <div class="text-white" id="first-bottom">
            <div class="container" data-aos="fade-up" data-aos-delay="50">
                <div>
                    <div class="container-fluid" data-aos="fade-up" data-aos-duration="100">
                        <h1 class="text-white">Contact Information</h1>
                        <hr>
                        <form id="contactForm" action="https://formspree.io/sofaissofa@icloud.com" method="post"><input class="form-control" type="hidden" name="Introduction" value="This email was sent from BLACKBOX"><input class="form-control" type="hidden" name="subject" value="blackbox Contact Form"><input class="form-control"
                                type="hidden" name="to" value="sofaissofa@icloud.com">
                            <div class="form-row">
                                <div class="col-12 col-md-6" id="message">
                                    <h2 class="h4"><i class="fas fa-file-signature"></i> Contact Us<small></small></h2>
                                    <div class="form-group"><label for="from-name">Name</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user-circle"></i></span></div><input class="form-control" type="text" id="from-name" name="name" required="" placeholder="이름을 입력하세요"></div>
                                    </div>
                                    <div class="form-group"><label for="from-email">Email</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-mail-bulk"></i></span></div><input class="form-control" type="text" id="from-email" name="email" required="" placeholder="이메일 주소를 입력하세요"></div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-12">
                                            <div class="form-group"><label for="from-phone">Phone</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-phone"></i></span></div><input class="form-control" type="text" id="from-phone" name="phone" required="" placeholder="핸드폰 번호를 입력하세요"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group"><label for="from-comments">Comments</label><textarea class="form-control" id="from-comments" name="comments" placeholder="입력하세요" rows="5"></textarea></div>
                                    <div class="form-group">
                                        <div class="form-row">
                                            <div class="col"><button class="btn btn-dark btn-block" type="reset"><i class="fa fa-undo"></i> 다시쓰기</button></div>
                                            <div class="col"><button class="btn btn-dark btn-block" type="submit">제출하기<i class="fa fa-chevron-circle-right"></i></button></div>
                                        </div>
                                    </div>
                                    <hr class="d-flex d-md-none">
                                </div>
                                <div class="col-12 col-md-6">
                                    <h2 class="h4"><i class="fa fa-location-arrow"></i> Location</h2>
                                    <div class="form-row">
                                        <div class="col-12">
                                            <div class="rounded static-map" id="map" style="width:100%; height:300px;">
                                            	<script>
													var container = document.getElementById('map');
													var options = {
														center: new daum.maps.LatLng(37.551292, 126.940974),
														level: 3
													};

													var map = new daum.maps.Map(container, options);
												</script>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-12 col-lg-6 mt-3">
                                            <h2 class="h4"><i class="fa fa-user"></i>&nbsp;Info</h2>
                                            <div><span><strong>회장 김은지</strong><br></span></div>
                                                                                    <div><span><a class="btn" role="button" style="padding: 0;" href="https://www.facebook.com/iblackbox/?__tn__=%2Cd%3C-R&amp;eid=ARAx1qi2QCSctJLH3MMm83T7egvAV4s71YjvQB949jxuPbdG6jwn4YiVFsiUfqymkRVByos4RtVe9QXK"><i class="fab fa-facebook-square" style="font-size: 30px;color: rgb(255,255,255);"></i></a>&nbsp;facebook</span></div>
                                                                                    <div><span><a class="btn" role="button" style="padding: 0;" href="https://www.instagram.com/sgublackbox/"><i class="fab fa-instagram" style="font-size: 30px;color: rgb(255,255,255);"></i></a>&nbsp;instagram</span></div>
                                                                                    <div><span><a class="btn" role="button" style="padding: 0;"><i class="fas fa-phone-square" style="font-size: 30px;color: rgb(255,255,255);"></i></a>&nbsp;010-6620-0465</span></div>
                                                                                    <div><span><a class="btn" role="button" style="padding: 0;"><i class="fas fa-envelope-square" style="font-size: 30px;color: rgb(255,255,255);"></i></a>&nbsp;sgublackbox@gmail</span></div>
                                        </div>
                                        <div class="col-sm-6 col-md-12 col-lg-6 mt-3">
                                            <h2 class="h4"><i class="fa fa-location-arrow"></i> Our Address</h2>
                                            <div><span><small>백범로&nbsp;35&nbsp;(신수동) 서강대학교<br></span><span>엠마오관 130호&nbsp;<br></span><span>04107&nbsp;서울특별시 마포구<br></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
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
</html>
