<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html class=" responsive" lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<meta name="viewport" content="width=device-width,initial-scale=1">
		<meta name="theme-color" content="#171a21">
		<title>로그인</title>
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

<link href="https://community.cloudflare.steamstatic.com/public/shared/css/motiva_sans.css?v=GfSjbGKcNYaQ&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/shared/css/buttons.css?v=tuNiaSwXwcYT&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/shared/css/shared_global.css?v=Zj8Lt-uyXH8R&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/css/globalv2.css?v=pwVcIAtHNXwg&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/shared/css/login.css?v=0H1th98etnSV&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/css/skin_1/home.css?v=-6qQi3rZclGf&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/shared/css/shared_responsive.css?v=KrKRjQbCfNh0&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" >
<link href="https://community.cloudflare.steamstatic.com/public/css/skin_1/header.css?v=vh4BMeDcNiCU&amp;l=koreana&amp;_cdn=cloudflare" rel="stylesheet" type="text/css" ><link href="css/login.css" rel="stylesheet" type="text/css">

<script type="text/javascript">VALVE_PUBLIC_PATH = "https:\/\/community.cloudflare.steamstatic.com\/public\/";</script><script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/javascript/scriptaculous/_combined.js?v=OeNIgrpEF8tL&amp;l=koreana&amp;_cdn=cloudflare&amp;load=effects,controls,slider,dragdrop" ></script>
<script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/javascript/global.js?v=EToM5vVWVuDV&amp;l=koreana&amp;_cdn=cloudflare" ></script>
<script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/javascript/jquery-1.11.1.min.js?v=.isFTSRckeNhC&amp;_cdn=cloudflare" ></script>
<script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/shared/javascript/tooltip.js?v=.zYHOpI1L3Rt0&amp;_cdn=cloudflare" ></script>
<script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/shared/javascript/shared_global.js?v=WVkjW4cQ29y0&amp;l=koreana&amp;_cdn=cloudflare" ></script>

	</head>
<body class="login global responsive_page ">
	<div
	role="banner"
	id="global_header"
	data-panel='{"flow-children":"row"}'
  >
	<div class="content">
	  <div class="logo" style="margin-top: -20px; margin-left: 30px;";>
		<span id="logo_holder" >
		  <a
			href="root"
			aria-label="Steam 홈페이지 링크"
		  >
		  <img
                    src="https://store.cloudflare.steamstatic.com/public/shared/images/header/logo_steam.svg?t=962016"
                    width="146"
                    height="86"
                    alt="Steam 홈페이지 링크"
                  />
		  </a>
		</span>
	  </div>

	  <div
		role="navigation"
		class="supernav_container"
		aria-label="공통 메뉴"
	  >
		<a
		  class="menuitem supernav supernav_active"
		  href="https://store.steampowered.com/?snr=1_4_4__global-header"
		  data-tooltip-type="selector"
		  data-tooltip-content=".submenu_store"
		>
		  상점
		</a>
		<div
		  class="submenu_store"
		  style="display: none"
		  data-submenuid="store"
		>
		  <a
			class="submenuitem"
			href="https://store.steampowered.com/?snr=1_4_4__global-header"
			>상점 홈</a
		  >
	   
		  <a
			class="submenuitem"
			href="https://steamcommunity.com/my/wishlist/"
			>찜 목록</a
		  >
	   
		  <a
			class="submenuitem"
			href="https://store.steampowered.com/news/?snr=1_4_4__global-header"
			>뉴스</a
		  >
	   
		</div>
 
		<a
		  class="menuitem supernav"
		  style="display: block"
		  href="https://steamcommunity.com/"
		  data-tooltip-type="selector"
		  data-tooltip-content=".submenu_community"
		>
		  커뮤니티
		</a>
		<div
		  class="submenu_community"
		  style="display: none"
		  data-submenuid="community"
		>
		  <a class="submenuitem" href="https://steamcommunity.com/">공지사항</a>
		  <a
			class="submenuitem"
			href="https://steamcommunity.com/discussions/"
			>자유 게시판</a
		  >
	  
		</div>


		<a
		  class="menuitem supernav"
		  style="display: block"
		  href="/mypage"
		  data-tooltip-type="selector"
		  data-tooltip-content=".submenu_mypage"
		>
		  마이페이지
		</a>
		<div
		  class="submenu_mypage"
		  style="display: none"
		  data-submenuid="mypage"
		>
		<a class="submenuitem" href="https://steamcommunity.com/discussions/">내 게임</a>
		<a class="submenuitem" href="https://steamcommunity.com/">주문 조회</a>
		<a class="submenuitem" href="https://steamcommunity.com/">계정 정보</a>
		<a class="submenuitem" href="https://steamcommunity.com/">설정</a>
		</div>
	  </div>

	  <!-- 마우스를 가져다 대면 툴팁이 펼쳐짐 -->
	  <script type="text/javascript">
		  jQuery(function ($) {
			$("#global_header .supernav").v_tooltip({
			  // 툴팁이 표시될 위치 지정(nav의 아래쪽)
			  location: "bottom",
			  // 툴팁이 숨겨질 때 파괴 여부
			  destroyWhenDone: false,
			  // 툴팁에 적용될 css
			  tooltipClass: "supernav_content",
			  // 툴팁의 수평 수직 오프셋
			  offsetY: -6,
			  offsetX: 1,
			  // 툴팁과 특정 요소와의 상대적인 위치(현재 global_header .supernav)
			  horizontalSnap: 4,
			  // 툴팁의 부모 요소 지정(어느 요소 안에 위치할지)
			  tooltipParent: "#global_header .supernav_container",
			  // 화면 크기에 따른 툴팁 위치 자동 조정 여부
			  correctForScreenSize: false,
			});
		  });
		</script>

	  <div id="global_actions">
		<div
		  role="navigation"
		  id="global_action_menu"
		  aria-label="계정 메뉴"
		>
		  <a
			class="header_installsteam_btn header_installsteam_btn_green"
			href="https://store.steampowered.com/about/?snr=1_4_4__global-header"
		  >
			<div class="header_installsteam_btn_content">설치</div>
		  </a>

		  <a
			class="global_action_link"
			href="/memberLoginForm"
			>로그인</a
		  >
		  &nbsp;|&nbsp;
		  <span
			class="pulldown global_action_link"
			id="language_pulldown"
			onclick="ShowMenu( this, 'language_dropdown', 'right' );"
			>언어</span
		  >
		  <div
			class="popup_block_new"
			id="language_dropdown"
			style="display: none"
		  >
			<div class="popup_body popup_menu">
			  <a
				class="popup_menu_item tight"
				href="?l=schinese"
				onclick="ChangeLanguage( 'schinese' ); return false;"
				>한국어</a
			  >
		
	  
			  <a
				class="popup_menu_item tight"
				href="?l=english"
				onclick="ChangeLanguage( 'english' ); return false;"
				>English</a
			  >
 
			</div>
		  </div>
		</div>
	  </div>
	</div>
	<!-- 글로벌 헤더 끝 -->
  </div>

 <!-- LOGIN MODULE -->
 <div class="login"  style:"margin-top: 100px;">
	<div class="wrap"  style:"margin-top: 100px;">

		<!-- LOGIN FORM -->
		<div class="user">
			<!-- ACTIONS
			<div class="actions">
				<a class="help" href="#signup-tab-content">Sign Up</a><a class="faq" href="#login-tab-content">Login</a>
			</div>
			-->
			<!-- LOGO -->
			<div class="logo1">
				<a href="#"><img src="http://res.cloudinary.com/dpcloudinary/image/upload/v1506186248/logo.png" alt=""></a>
			</div>
			<div class="recovery">
				<h2>Password Recovery</h2>
				<p>Enter either the <strong>email address</strong> or <strong>username</strong> on the account and <strong>click Submit</strong></p>
				<p>We'll email instructions on how to reset your password.</p>
				<form class="recovery-form" action="" method="post">
					<input type="text" class="input" id="user_recover" placeholder="Enter Email or Username Here">
					<input type="submit" class="button" value="Submit">
				</form>
				<p class="mssg">An email has been sent to you with further instructions.</p>
			</div>

			<!-- FORM -->
			<div class="form-wrap" >
				<!-- TABS -->
			  <div class="tabs">
					<h3 class="login-tab"><a class="log-in active" href="#login-tab-content"><span>Login<span></a></h3>
				<h3 class="signup-tab"><a class="sign-up" href="#signup-tab-content"><span>Sign Up</span></a></h3>
			  </div>
				<!-- TABS CONTENT -->
			  <div class="tabs-content">
					<!-- TABS CONTENT LOGIN -->
				<div id="login-tab-content" class="active">
				  <form class="login-form" action="" method="post">
					<input type="text" class="input" id="user_login" autocomplete="off" placeholder="Email or Username">
					<input type="password" class="input" id="user_pass" autocomplete="off" placeholder="Password">
					<input type="checkbox" class="checkbox" checked id="remember_me">
					<label for="remember_me">Remember me</label>
					<input type="submit" class="button" value="Login">
				  </form>
				  <div class="help-action">
					<p><i class="fa fa-arrow-left" aria-hidden="true"></i><a class="forgot" href="#">Forgot your password?</a></p>
				  </div>
				</div>
					<!-- TABS CONTENT SIGNUP -->
				<div id="signup-tab-content">
				  <form class="signup-form" action="" method="post">
					<input type="email" class="input" id="user_email" autocomplete="off" placeholder="Email">
					<input type="text" class="input" id="user_name" autocomplete="off" placeholder="Username">
					<input type="password" class="input" id="user_pass" autocomplete="off" placeholder="Password">
					<input type="submit" class="button" value="Sign Up">
				  </form>
				  <div class="help-action">
					<p>By signing up, you agree to our</p>
					<p><i class="fa fa-arrow-left" aria-hidden="true"></i><a class="agree" href="#">Terms of service</a></p>
				  </div>
				</div>
			  </div>
		  </div>
		</div>
	</div>
</div>




</body>
</html>