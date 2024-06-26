<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="responsive" lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta name="theme-color" content="#171a21" />
    <title>Steam에 오신 것을 환영합니다</title>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

    <link rel="stylesheet" href="css/cart.css" type="text/css">
    <!-- 전역 스타일 -->
    <link
      href="https://store.akamai.steamstatic.com/public/shared/css/shared_global.css?v=wy0wYJxBlt-2&amp;l=koreana"
      rel="stylesheet"
      type="text/css"
    />

    <!-- 버튼 스타일 -->
    <link
      href="https://store.akamai.steamstatic.com/public/shared/css/buttons.css?v=CrrkDubPqLcq&amp;l=koreana"
      rel="stylesheet"
      type="text/css"
    />

    <!-- 스토어 페이지 스타일 -->
    <link
      href="https://store.akamai.steamstatic.com/public/css/v6/store.css?v=uyNv5nhg5spR&amp;l=koreana"
      rel="stylesheet"
      type="text/css"
    />

    <!-- 홈페이지 스타일 -->
    <link
      href="https://store.akamai.steamstatic.com/public/css/v6/home.css?v=WVpC3bZ3_lHf&amp;l=koreana"
      rel="stylesheet"
      type="text/css"
    />

    <!-- 크리에이터 허브 스타일 -->
    <link
      href="https://store.akamai.steamstatic.com/public/css/v6/creator_hub.css?v=e6oxFOI4knLo&amp;l=koreana"
      rel="stylesheet"
      type="text/css"
    />

    <!-- 반응형 디자인 스타일 -->
    <link
      href="https://store.akamai.steamstatic.com/public/shared/css/shared_responsive.css?v=cuGNP1dzetug&amp;l=koreana"
      rel="stylesheet"
      type="text/css"
    />

    <!-- jquery 추가 -->
    <script
      type="text/javascript"
      src="https://store.akamai.steamstatic.com/public/shared/javascript/jquery-1.8.3.min.js?v=.TZ2NKhB-nliU"
    ></script>
    
    <!-- J 변수 정의 -->
    <script type="text/javascript">
        // $은 Jquery를 대표하는 객체로 쓰이지만 다른 프레임 워크에서도 $을 쓰기 때문에 충돌을 피하기 위해 $J로 변경함
      $J = jQuery.noConflict();
    </script>

<!--  리소스 경로 설정  -->
    <script type="text/javascript">
        // \/ = 슬래시(/)는 문자열을 종료시키는 역할을 하기 때문에 이스케이프 처리를 한 것
      VALVE_PUBLIC_PATH = "https:\/\/store.akamai.steamstatic.com\/public\/";
    </script>

    <!-- 툴팁 동작 제어 -->
    <script
      type="text/javascript"
      src="https://store.akamai.steamstatic.com/public/shared/javascript/tooltip.js?v=.zYHOpI1L3Rt0"
    ></script>

    <!-- 전역 동작 제어 -->
    <script
      type="text/javascript"
      src="https://store.akamai.steamstatic.com/public/shared/javascript/shared_global.js?v=dsQKg9OwNmqV&amp;l=koreana"
    ></script>

    <!-- 메인 페이지 동작 제어 -->
    <script
      type="text/javascript"
      src="https://store.akamai.steamstatic.com/public/javascript/main.js?v=35z9fzDlEKYb&amp;l=koreana"
    ></script>

    <!-- 동적 동작 처리 -->
    <script
      type="text/javascript"
      src="https://store.akamai.steamstatic.com/public/javascript/dynamicstore.js?v=lb8HCMTvEMY9&amp;l=koreana"
    ></script>




  <!-- 홈페이지 동적 요소  -->
    <script
      type="text/javascript"
      src="https://store.akamai.steamstatic.com/public/javascript/home.js?v=SRkPLEvGhCZQ&amp;l=koreana"
    ></script>

    <!-- 클러스터 설정 (그룹화, 순환적 표시)-->
    <script
      type="text/javascript"
      src="https://store.akamai.steamstatic.com/public/javascript/cluster.js?v=dDJtCVstwuYC&amp;l=koreana"
    ></script>

    <!-- 반응형으로 페이지 디자인 조정   -->
    <script
      type="text/javascript"
      src="https://store.akamai.steamstatic.com/public/shared/javascript/shared_responsive_adapter.js?v=6ERCH2Nxo0Lr&amp;l=koreana"
    ></script>

    <style type="text/css">
      @media all and (min-width: 1208px) {
        div#global_header .content {
          position: relative;
          right: -90px;
        }
      }

      body.v6 .home_rightcol h2 {
        margin-bottom: 2px;
        margin-top: 1px;
      }

      .spotlight_weeklong_subtitle {
        margin-top: 14px;
      }
    </style>
  </head>


  <body class="v6 infinite_scrolling responsive_page">

      <div class="responsive_page_content_overlay"></div>

      <div class="responsive_fixonscroll_ctn nonresponsive_hidden"></div>

      <div class="responsive_page_content">

        <!-- 전역 헤더를 정의,  data-panel 속성을 사용하여 플로우 자식 요소가 행(row)으로 배치되도록 설정되어 있습니다. 이 코드는 웹 페이지의 상단에 전역적인 헤더를 정의하고, 해당 헤더의 레이아웃 및 속성을 지정합니다. -->
        <div
          role="banner"
          id="global_header"
          data-panel='{"flow-children":"row"}'
        >
          <div class="content">
            <div class="logo" style="margin-top: -20px; margin-left: 30px;";>
              <span id="logo_holder" >
                <a
                  href="/"
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
              href="/"
              >상점 홈</a
            >

            <a
              class="submenuitem"
              href="/wishlist"
              >찜 목록</a
            >

            <a
              class="submenuitem"
              href="/news"
              >소식</a
            >
          </div>

          <a
            class="menuitem supernav"
            style="display: block"
            href="/community"
            data-tooltip-type="selector"
            data-tooltip-content=".submenu_community"
          >
            커뮤니티
          </a>
          <div
            class="submenu_community"
            style="display: none"
            data-submenuid="/community"
          >
            <a class="submenuitem" href="/noticeForum"
              >공지사항</a
            >
            <a
              class="submenuitem"
              href="generalForum"
              >자유 게시판</a
            >
          </div>

          <a
            class="menuitem supernav"
            style="display: block"
            href="/myPage"
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
            <a
              class="submenuitem"
              href="/myGames"
              >내 게임</a
            >
            <a class="submenuitem" href="/myOrders"
              >주문 조회</a
            >
            <a class="submenuitem" href="/myInfo"
              >계정 정보</a
            >
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
              <c:if test="${loginInfo.status eq 'admin'}">		
					<a href="/memberManagement">회원관리 | </a>
					<a href="/productManagement">상품관리 | </a>
				</c:if>
				<c:choose>
					<c:when test="${loginInfo.status eq 'member' || loginInfo.status eq 'admin'}">
						<a href="/logout">로그아웃</a>
					</c:when>
					<c:otherwise>
				     <a
                  class="global_action_link"
                  href="/loginForm"
                  >로그인</a
                >
                &nbsp;|&nbsp;
                <a
                  class="global_action_link"
                  href="/loginForm"
                  >회원가입</a
                >
					</c:otherwise>
				</c:choose>
           
              </div>
            </div>
          </div>
          <!-- 글로벌 헤더 끝 -->
        </div>
              <div class="home_page_content">
                <div
                  id="store_header"
                  role="navigation"
                  aria-label="상점 메뉴"
                  class=""
                >
                  <div class="content">
                    <div id="store_controls">
                      <div class="cart_status_flex" id="cart_status_data">
                        <div
                          data-featuretarget="shoppingcart-count-widget"
                          data-props='{"count":0}'
                        ></div>
                      </div>
                    </div>

                    <div id="store_nav_area">
                      <div class="store_nav_leftcap"></div>
                      <div class="store_nav_bg">
                        <div
                          class="store_nav"
                          data-panel='{"flow-children":"row"}'
                        >
                          <div
                            class="tab flyout_tab"
                            id="foryou_tab"
                            data-flyout="foryou_flyout"
                            data-flyout-align="left"
                            data-flyout-valign="bottom"
                            data-flyout-delay="300"
                            data-panel='{"focusable":true}'
                          >
                            <span class="pulldown">
                              <a
                                class="pulldown_desktop"
                                href="/"
                                >상점 홈</a
                              >
                          </div>
                          

                          <div class="search_flex_spacer"></div>
                          <div class="search_area">
                            <div id="store_search">
                              <form
                                id="searchform"
                                name="searchform"
                                method="get"
                                action="search"
                                role="search"
                              >
                                <div class="searchbox">
                                  <input
                                    id="store_nav_search_term"
                                    name="term"
                                    type="search"
                                    class="default"
                                    placeholder="검색하기"
                                    size="22"
                                    autocomplete="off"
                                    maxlength="64"
                                  />
                                  <a
                                    href="#"
                                    id="store_search_link"
                                    onclick="var $Form = $J(this).parents('form'); $Form.submit(); return false;"
                                    aria-label="Steam 검색"
                                    ><img
                                      src="https://store.akamai.steamstatic.com/public/images/blank.gif"
                                      alt=""
                                  /></a>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="store_nav_rightcap"></div>
                    </div>
                  </div>
                </div>

                
                <div class="content_subject"><span>장바구니</span></div>
                <!-- 장바구니 리스트 -->
                <div class="content_container">
                <!-- 장바구니 가격 합계 -->
                <!-- cartInfo -->   
                <div class="content_totalCount_section">
                    
                    <table class="subject_table">
                        <caption>표 제목 부분</caption>
                        <tbody>
                            <tr>
                              <th class="td_width_2"></th>
                                <th class="td_width_2"></th>
                                <th class="td_width_2"></th>
                                <th class="td_width_2"></th>
                            </tr>
                        </tbody>
                    </table>
                    <table class="cart_table">
                        <caption>표 내용 부분</caption>
                        <tbody>
                            <c:forEach items="${cartList}" var="product">
                                <tr id="product_tr_${product.num}">
                   		<td class="td_width_1 cart_info"><input type="hidden" id="product_price_${product.num}" class="individual_totalPrice" value="${product.price}"></td>
                                    <td class="td_width_3"><img src="img/header/${product.name}_header.jpg" alt="상품이미지" width="200" height="auto"/></td>
                                    <td class="td_width_3"><a href="/productDetail?productNum=${product.num}">${product.name}</a></td>
                                    <td class="td_width_4 price_td">
                                      <!-- 판매가 -->
                                      <div class="price_wrapper">
                                          <span><fmt:formatNumber value="${product.price}" pattern="#,### 원" /></span>
                                      </div>
                                      <!-- 삭제 버튼 -->
                                      <div class="delete_btn_wrapper">
                                          <a href="#" onclick="deleteFromCart(${product.num}, ${loginInfo.memberNum})" class="delete_btn" style=" text-decoration: underline;">제거</a>
                                      </div>
                                  </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!-- 가격 종합 -->
                <div class="content_total_section">
                    <div class="total_wrap">
                        <table>
                            <tr>
                                <td>
                                  
                                    <tr class="totalPriceSize">
                                        <td class="left-align">예상 합계</td>
                                        <td class="right-align">
                                            <strong><span class="totalPrice"></span> 원</strong>
                                        </td>
                                    </tr>
                                
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>							
                                </td>
                            </tr>
                        </table>
                        <div class="boundary_div">구분선</div>

                        <div class="content_btn_section">
                          <a href="#" class="continue_button" style="font-size: 15px; width: 250px;height: auto; padding:0px">주문하기</a>
                      </div>
                    </div>
                </div>
              
                <!-- 구매 버튼 영역 -->
            
              </div>

          <!-- Footer -->
          <div id="footer_spacer" class="small_footer"></div>
          <div id="footer" class="small_footer">
            
            <div class="footer_content">
              <div class="rule"></div>
           
              <div id="footer_text" data-panel='{"flow-children":"row"}'>
                
                <div style="margin-top:10px">
      
                  &copy; 2024 Valve Corporation. All rights reserved. <br/>
                  모든 상표는 미국 및 기타 국가에서 해당하는 소유자의 재산입니다.
      
              </div>
          </div>
        </div>
        <!-- responsive_page_legacy_content -->
      </div>
      <!-- responsive_page_content -->
    </div>
    <!-- responsive_page_frame -->

<script>

function deleteFromCart(productNum, memberNum) {
    $J.ajax({
        url: '/deleteFromCart',
        type: 'Post',
        data: {
            productNum: productNum,
            memberNum: memberNum
        },
        success: function(data) {
            // AJAX 요청이 성공했을 때 실행되는 함수
            alert('상품이 장바구니에서 제거되었습니다');
            // 해당 상품 요소를 동적으로 제거합니다.
            var totalPriceValue = $J(".totalPrice").text().replace(/[^\d.-]/g, '');
            var productPriceValue = $J('#product_price_' + productNum).val();
            
            $J('#product_tr_' + productNum).remove();
            
            // 총 가격에서 해당 상품 가격을 빼고, 결과를 다시 .totalPrice 요소의 텍스트로 설정합니다.
   
            
            console.log('totalPriceValue:', totalPriceValue);
            console.log('productPriceValue:', productPriceValue);
            
            
            var totalPriceFormatted = new Intl.NumberFormat('ko-KR', { style: 'currency', currency: 'KRW' }).format(totalPriceValue - productPriceValue);
            $J(".totalPrice").text(totalPriceFormatted);
        },
        error: function(xhr, status, error) {
            // 에러 처리
            console.error(xhr, status, error);
        }
    });
}

</script>
<script>
$J(document).ready(function () {
	  /* 종합 정보 섹션 정보 삽입 */
	  let totalPrice = 0; // 총 가격
	  $J(".cart_info input.individual_totalPrice").each(function (index, element) {
	    // 총 가격
	    let price = parseInt($J(element).val()); // 각 상품의 가격 가져오기
	    console.log("상품 가격:", price); // 값 로깅
	    totalPrice += price; // 총 가격에 더하기
	  });
	  console.log("총 가격:", totalPrice); // 총 가격 로깅

	  /* 값 삽입 */

	  // 총 가격
	  $J(".totalPrice").text(totalPrice.toLocaleString());
	  console.log("총 가격:", $J(".totalPrice").text());
	});
</script>
  </body>
</html>
