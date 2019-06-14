<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="shortcut icon" type="image/x-icon" href="img/logo.png">
    <title>sgublackbox</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
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
                            <li class="nav-item" role="presentation"><a class="nav-link" href="apply.jsp">Apply</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="community.jsp">Community</a></li>
    <% 
    	if (userID == null) {
    %>
                            <li class="nav-item dropleft">
                            <a class="dropdown-toggle nav-link active" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-user-circle"></i></a>
                            	<div class="dropdown-menu bg-secondary" role="menu">
                            		<a class="dropdown-item text-white" role="presentation active" href="login.jsp">로그인</a>
                            		<a class="dropdown-item text-white" role="presentation" href="join.jsp">회원가입</a>
                            	</div>
                            </li>
    <% 
    	} else {
    %>
                            <li class="nav-item dropleft">
                            <a class="dropdown-toggle nav-link active" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-user-circle"></i></a>
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
        <h2 class="display-4 text-center text-white" data-aos="fade-down" id="first-heading">Login</h2>
        
        <div class="container col-md-5 mx-auto" id="login-container">
            <form class="text-center border rounded" id="login-form" method="post" style="background-color: #626262;opacity: 0.79;" action="loginAction.jsp">
                <h2 class="sr-only">Login Form</h2>
					<div class="form-group">
                        <label>ID</label>
                         <input type="text" name="userID"  class="form-control" placeholder="아이디를 입력하세요">
                     </div>
                     <div class="form-group">
                         <label>Password</label>
                         <input type="password" name="userPassword" class="form-control" placeholder="패스워드를 입력하세요">
                     </div>
                	  <div class="form-group"><button class="btn btn-primary btn-block form-control" type="submit" style="background-color: rgb(52,52,52); border:1px solid #dddddd">login</button></div>
              </form>
                <a class="btn btn-primary mt-5" role="button" style="background-color: rgb(27,27,27);color: rgb(255,255,255); border:1px solid #dddddd" href="join.jsp">회원가입하기</a>
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
