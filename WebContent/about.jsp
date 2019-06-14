<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"> <meta name="description" content="서강대학교 창업동아리 블랙박스
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
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="about.jsp">About</a></li>
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
        <h2 class="display-4 text-center text-white" data-aos="fade-down" id="first-heading">Projects</h2>
        </div>

        <div class="container">
        <div class="row no-gutters justify-content-center images-grid" style="margin: 10px;">
            <div class="col-md-3 bg-transparent my-4 p-3" data-aos="fade-up">
                <a href="#modal1"><img class="img-thumbnail rounded-circle border border-white" style="background-color: rgba(255,255,255,0.6);" src="img/redbox.png" alt="red-box" data-toggle="modal" data-target="#modal1" id="myModal"></a>
            </div>
            <div class="col-md-3 bg-transparent my-4 p-3" data-aos="fade-up" id="modal-right">
                <a href="#modal2"><img class="img-thumbnail rounded-circle border border-white" style="background-color: rgba(255,255,255,0.6);" src="img/yellowbox.png" alt="yellow-box" data-toggle="modal" data-target="#modal2" id="myModal"></a>
            </div>
            <div class="col-md-3 bg-transparent my-4 p-3" data-aos="fade-up">
                <a href="#modal3"><img class="img-thumbnail rounded-circle border border-white" style="background-color: rgba(255,255,255,0.60);" src="img/orangebox.png" alt="orange-box" data-toggle="modal" data-target="#modal3" id="myModal"></a>
            </div>
            <div class="col-md-3 bg-transparent my-4 p-3" data-aos="fade-up" id="modal-right">
                <a href="#modal4"><img class="img-thumbnail rounded-circle border border-white" style="background-color: rgba(255,255,255,0.60);" src="img/greenbox.png" alt="green-box" data-toggle="modal" data-target="#modal4" id="myModal"></a>
            </div>
        </div>
        <div class="row no-gutters justify-content-center images-grid" style="margin: 10px;">
            <div class="col-md-3 bg-transparent my-4 p-3" data-aos="fade-up">
                <a href="#modal5"><img class="img-thumbnail rounded-circle border border-white" style="background-color: rgba(255,255,255,0.60);" src="img/bluebox.png" alt="blue-box" data-toggle="modal" data-target="#modal5" id="myModal"></a>
            </div>
            <div class="col-md-3 bg-transparent my-4 p-3" data-aos="fade-up" id="modal-right">
                <a href="#modal6"><img class="img-thumbnail rounded-circle border border-white" style="background-color: rgba(255,255,255,0.60);" src="img/navybox.png" alt="navy-box" data-toggle="modal" data-target="#modal6" id="myModal"></a>
            </div>
            <div class="col-md-3 bg-transparent my-4 p-3" data-aos="fade-up">
                <a href="#modal7"><img class="img-thumbnail rounded-circle border border-white" style="background-color: rgba(255,255,255,0.60);" src="img/purplebox.png" alt="purple-box" data-toggle="modal" data-target="#modal7" id="myModal"></a>
            </div>
        </div>
        </div>
    </section>
    <hr style="color: rgb(255,255,255);background-color: #ffffff;">
    <section class="d-flex flex-column justify-content-between" id="second">
        <div id="first-top">
            <h2 class="display-4 text-center text-white" data-aos="fade-down" id="first-heading">Manage</h2>
        </div>
        <div id="first-bottom">
            <div class="container" data-aos="fade-down" data-aos-delay="50">
                <div class="row no-gutters">
                    <div class="col-md-6 mt-2"><img class="rounded img-fluid" data-aos="fade-down" data-aos-duration="50" src="img/howwework.jpg" width="100%"></div>
                    <div class="col-md-6" data-aos="fade-down" data-aos-duration="50">
                        <h3 class="text-white my-3 font-weight-bold" style="padding-left: 10px;">운영진 운영방식<br></h3>
                        <p class="text-white small" style="padding-left: 10px;">운영진은 크게 회장, 부회장, 그리고 그 밑의 간부진들로 나누어집니다. 간부진들은 인사부, 기획부, 사무부, 전략부, 회계부, 홍보부로 나누어지며 각각의 간부진들 프로젝트를 대표하는 팀장들에는 일절 간섭하지 않으며 동아리의 행정적인 역할을 도맡아서 합니다.<br></p>
                        <h3 class="text-white font-weight-bold" style="padding-left: 10px;">프로젝트 구성방식<br></h3>
                        <p class="text-white small" style="padding-left: 10px;">블랙박스는 무지개색의 아이디어를 차용하여 다채로운 프로젝트를 진행하고 있습니다. 레드박스부터 퍼플박스 7개의 팀으로 이루어진 서로 다른 프로젝트에 블랙박스의 모든 구성원들이 참여할 수 있습니다. 당연히 복수 선택이 가능하며, 이 팀들 외에도 자신이 하고 싶은 프로젝트 또한 진행할 수 있습니다.<br></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <hr style="color: rgb(255,255,255);background-color: #ffffff;">

    <section class="text-center" id="second">
        <div id="first-top" class="mb-5">
            <h1 class="display-4 text-center text-white" data-aos="fade-up" id="first-heading">Output</h1>
        </div>
        <div class="mt-2" id="first-bottom">
            <div class="container" data-aos="fade-down" data-aos-delay="50">
                <div class="row no-gutters">
                    <div class="col">
                        <div class="card-group">
                            <div class="card"><img class="card-img-top w-100 d-block" src="img/studysearch.jpg">
                                <div class="card-body">
                                    <h4 class="card-title font-weight-bold">스터디서치</h4>
                                    <p class="card-text" style="font-size: 20px;">가장 아낌없는 동아리 후원을 해주고 계시는 선배님이십니다! 동방에 에어컨 설치, 홈커밍데이 때의 아낌없는 조언, 그리고 인턴기회까지!<br></p><button class="btn btn-primary text-primary" type="button" style="background-color: #000000;color: rgb(0,0,0);">
                                      <a href="https://studysearch.co.kr/"><i class="fa fa-home" style="color: rgb(255,255,255);"></i></a></button></div>
                            </div>
                            <div class="card"><img class="card-img-top w-100 d-block" src="img/banksalad.png">
                                <div class="card-body">
                                    <h4 class="card-title font-weight-bold">뱅크샐러드</h4>
                                    <p class="card-text" style="font-size: 20px;">최근 2,30대 직장인들의 열렬한 지지를 받고 있는 뱅크 샐러드 또한 블박 출신이신 것 알고 계셨나요? 다양한 기회의 장 블랙박스!<br></p><button class="btn btn-primary text-primary" type="button" style="background-color: #000000;">
                                      <a href="https://app.banksalad.com/"><i class="fa fa-home" style="color: rgb(255,255,255);"></i></a></button></div>
                            </div>
                            <div class="card"><img class="card-img-top w-100 d-block" src="img/books.png">
                                <div class="card-body">
                                    <h4 class="card-title font-weight-bold">책읽찌라</h4>
                                    <p class="card-text" style="font-size: 20px;">책과 관련된 지식을 소개하는 다양한 영상을 올리는 채널입니다. 직접 유튜브 채널을 운영하시면서 느끼셨던 생생한 경험들을 공유해주십니다.<br><button class="btn btn-primary text-primary mt-3" type="button" style="background-color: #000000;">
                                      <a href="https://www.youtube.com/channel/UCW-xgKdaPidxpJ6j6HZPC-g"><i class="fab fa-youtube" style="color: rgb(255,255,255);"></i></a></button></p>
                                </div>
                            </div>
                        </div>
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


  <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-sm-12 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">아프리카 교통카드 사업</h2>
                <p class="item-intro text-muted">Red Box</p>
                <img class="img-fluid d-block mx-auto" src="img/redbox.png" alt="red-box">
                <p>많은 아프리카의 국가들은 대중교통의 혜택을 제대로 보지 못하고 있습니다. 극히 일부 부유한 국가들의 도심지를 제외한 나머지 곳에서는 제대로 된 시스템이 갖추어져 있지 않은 실정입니다. 남아공, 르완다, 케냐 등의 일부 나라에서만 시행되고 있는 대중교통 카드를 더 많은 지역에서 사용할 수 있도록 하는 것을 목표로 하는 중입니다. 현지 사정에 맞춘 교통카드 개발을 단기적으로 목표하고 있으며 더 나아가 현지 사정에 맞는 다른 사업들 또한 구상중에 있습니다. </p>
                <ul class="list-inline">
                  <li>현원 : 8명</li>
                  <li>팀장: 한우석</li>
                  <li><a href="https://www.instagram.com/han_u_seok/"><i class="fab fa-instagram"></i>han_u_seok</a></li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="portfolio-modal modal fade" id="modal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-sm-12 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">남성 패션 코디 플랫폼 789</h2>
                <p class="item-intro text-muted">Yellow Box</p>
                <img class="img-fluid d-block mx-auto" src="img/yellowbox.png" alt="yellow-box">
                <p>누구나 한 번쯤 타인에게 스타일 지적을 받은 적이 있을 겁니다. 패션에 비교적 관심이 많은 분이라도 피해갈 수 없는 숙명이죠. 무작정 인스타 유명인을 따라해보려 해도 결국 느끼는 것은 패완키 패완얼... 그래서 당신에게 꼭 맞는 옷을 추천 해주기 위해서 이렇게 나왔습니다. 당신의 키, 체형, 얼굴형, 옷을 입고 가야 되는 상황 등을 종합적으로 고려해 가장 완벽한 룩을 추천해 드립니다. 현재 개발중에 있으며 카카오톡 플친, 오프라인, 인터넷 쇼핑몰 판매 및 앱 등으로 활발한 활동을 할 계획입니다.</p>
                <ul class="list-inline">
                  <li>현원: 6명</li>
                  <li>팀장: 정희정</li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="portfolio-modal modal fade" id="modal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-sm-12 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">유기농 화장품 사업</h2>
                <p class="item-intro text-muted">Orange box</p>
                <img class="img-fluid d-block mx-auto" src="img/orangebox.png" alt="orange-box">
                <p>세상에는 많은 피부 타입들이 있죠. 다양한 사람들, 다양한 피부 타입이 존재한다는 것을 증명이라도 하고 싶은 건지 세상에는 너무 많은 화장품 회사들이 있죠. 사실 그런 제품들을 다 사용해볼 수도 없는데 말이죠. 그래서 모든 사람들의 피부 타입을 고려한 유기농 화장품 개발을 목표로 하고 있습니다. 현재 립밤, 핸드크림 등 간단한 화장품 시제품 제작을 마쳤으며 앞으로 온,오프라인 판매를 하며 더욱 분야를 넓혀나갈 예정입니다,.</p>
                <ul class="list-inline">
                  <li>현원: 6명</li>
                  <li>팀장: 박소영</li>
                  <li></li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="portfolio-modal modal fade" id="modal4" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-sm-12 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">모바일 게임 개발</h2>
                <p class="item-intro text-muted">Green box</p>
                <img class="img-fluid d-block mx-auto" src="img/greenbox.png" alt="greenbox">
                <p>Angry bird, Fruit ninja 등의 모바일 게임이 몇 백억의 수익을 올렸는지에 대해 논하는 기사가 이제는 밥먹듯이 나올 정도로 모바일 게임시장은 점점 더 성장하고 있습니다. 팀장 단 한명을 제외하고는 전원 비전공자로 이루어진 이 팀은 주기적인 스터디를 통해 이미 각자가 기획한 게임을 스스로 만들어 내고 있습니다. 무슨 말이 더 필요할까요??</p>
                <ul class="list-inline">
                  <li>현원: 7명</li>
                  <li>팀장: 최준수</li>
                  <li><a href="https://www.facebook.com/junsoo.choi.96"><i class="fab fa-facebook">최준수 facebook</i></a></li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="portfolio-modal modal fade" id="modal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-sm-12 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">국내 전통주 사업</h2>
                <p class="item-intro text-muted">Blue box</p>
                <img class="img-fluid d-block mx-auto" src="img/bluebox.png" alt="blue-box">
                <p>막걸리, 동동주, 소주 말고도 우리나라에는 원래 전통주가 굉장히 많습니다. 블랙박스는 국내에서 사장된 많은 전통주들을 다시 살리려는 노력을 하고 있음과 동시에 다양한 지역의 고유한 주류들을 수면위로 끌어올리려 하고 있습니다. 더욱 많은 사람들에게 우리나라의 우수한 주류를 알리고 개발하고 싶지는 않으신가요?</p>
                <ul class="list-inline">
                  <li>현원: 6명</li>
                  <li>팀장: 황승현</li>
                  <li><a href="https://www.facebook.com/seunghyun.hwang.988"><i class="fab fa-facebook">황승현 facebook</i></a></li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="portfolio-modal modal fade" id="modal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-sm-12 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">다양한 악세사리 제작</h2>
                <p class="item-intro text-muted">Navy box</p>
                <img class="img-fluid d-block mx-auto" src="img/navybox.png" alt="navybox">
                <p>사실 창업의 기본은 유통, 판매라고 생각하시는 분드이 굉장히 많을 거에요. 그런 분들이 모여 만든 프로젝트입니다. 정말로 아름다운 악세사리들을 직접 제작, 유통, 판매, 홍보 하는 과정을 통해 창업의 기본을 알아볼 수 있습니다. 게다가 다양한 사회적 기업들과의 콜라보 또한 예정중에 있다고 하네요!!</p>
                <ul class="list-inline">
                  <li>현원: 7명</li>
                  <li>팀장: 강주형</li>
                  <li><a href="https://www.facebook.com/JH3758"><i class="fab fa-facebook"></i>강주형 페이스북</a></li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="portfolio-modal modal fade" id="modal7" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-sm-12 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">모바일 미팅 플랫폼 개발</h2>
                <p class="item-intro text-muted">Purple box</p>
                <img class="img-fluid d-block mx-auto" src="img/purplebox.png" alt="purple box">
                <p>실제 밖에서는 소개팅 보다는 단체로 하는 미팅이 조금 더 인기가 있습니다. 상대가 많아 선택의 폭이 더 넓어지기 때문에 라고 생각합니다. 근데 왜 온라인 에서는 미팅이 아닌 소개팅 플랫폼밖에 없을까요? 그래서 블랙박스에서 사람들의 그 욕구를 해소시키고자 합니다. 같이 웹, 앱 개발 공부도 하며 동참하고 싶으시진 않은가요?</p>
                <ul class="list-inline">
                  <li>현원: 6명</li>
                  <li>팀장: 김민수</li>
                  <li><a href="https://www.facebook.com/profile.php?id=100003407083334"><i class="fab fa-facebook">김민수 facebook</i></a></li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close Project</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


</body>

</html>
