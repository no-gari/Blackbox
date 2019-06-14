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
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="community.jsp">Community</a></li>
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
        </div>
        <div class="text-white" id="first-bottom">
            <div class="container mt-5" data-aos="fade-up">
	            <form method="post" action="writeAction.jsp">
	            <table class="table table-striped mx-3" style="text-align:center; background-color: transparent; border:1px solid #dddddd"> 
					<thead style="background-color: rgba(255,255,255,0.73);">
						<tr>
							<th colspan="2" style="text-align: center;">게시판 글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="color:white;"><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
						</tr>
						<tr>
							<td style="color:white;"><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="width:100%; height:350px;"></textarea></td>							
						</tr>
					</tbody>
				</table>
					<input type = "submit" class="btn btn-primary m-5 t-5" role="button" style="background-color: rgb(27,27,27);color: rgb(255,255,255); border:1px solid #dddddd" value="글쓰기">										
	            </form>	
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
