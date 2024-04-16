<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="responsive" lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta name="theme-color" content="#171a21" />
    <title>Steam의 ${product.name}</title>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
	
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	  
    <link
      href="https://store.cloudflare.steamstatic.com/public/shared/css/motiva_sans.css?v=2C1Oh9QFVTyK&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://store.cloudflare.steamstatic.com/public/shared/css/shared_global.css?v=qUG5Ub5rrq2J&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://store.cloudflare.steamstatic.com/public/shared/css/buttons.css?v=Grv-5yNFuEfg&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://store.cloudflare.steamstatic.com/public/css/v6/store.css?v=fqF6X6wSBa3N&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://store.cloudflare.steamstatic.com/public/shared/css/user_reviews.css?v=swymvCxbtweu&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://store.cloudflare.steamstatic.com/public/shared/css/store_game_shared.css?v=ZvsIbt5k0m1Z&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://store.cloudflare.steamstatic.com/public/css/v6/game.css?v=ztn1p7elD_O-&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://store.cloudflare.steamstatic.com/public/css/v6/recommended.css?v=2DUqKOxEMbPk&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://store.cloudflare.steamstatic.com/public/css/v6/user_reviews_rewards.css?v=5-HJZa1v4wFP&amp;l=koreana&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />

    <link
      href="https://store.cloudflare.steamstatic.com/public/shared/css/ui-lightness/jquery-ui-1.7.2.custom.css?v=.23LkAmA0IgZV&amp;_cdn=cloudflare"
      rel="stylesheet"
      type="text/css"
    />
  
  
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script type="text/javascript">VALVE_PUBLIC_PATH = "https:\/\/community.cloudflare.steamstatic.com\/public\/";</script><script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/javascript/scriptaculous/_combined.js?v=OeNIgrpEF8tL&amp;l=koreana&amp;_cdn=cloudflare&amp;load=effects,controls,slider,dragdrop" ></script>
    <script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/javascript/global.js?v=EToM5vVWVuDV&amp;l=koreana&amp;_cdn=cloudflare" ></script>
    <script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/javascript/jquery-1.11.1.min.js?v=.isFTSRckeNhC&amp;_cdn=cloudflare" ></script>
    <script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/shared/javascript/tooltip.js?v=.zYHOpI1L3Rt0&amp;_cdn=cloudflare" ></script>
    <script type="text/javascript" src="https://community.cloudflare.steamstatic.com/public/shared/javascript/shared_global.js?v=WVkjW4cQ29y0&amp;l=koreana&amp;_cdn=cloudflare" ></script>
	
   
  </head>
  <body class="v6 app game_bg application responsive_page">

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
              <c:if test="${loginStatus eq 'admin'}">		
					<a href="/memberManagement">회원관리 | </a>
					<a href="/productManagement">상품관리 | </a>
				</c:if>
				<c:choose>
					<c:when test="${loginStatus eq 'member' || loginStatus eq 'admin'}">
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
          <!-- 글로벌 헤더 끝 -->
        </div>
       
        <!-- create two column layout for Deck, Tablet sized screens -->
        <div id="tabletGrid" class="tablet_grid">
          <div
            class="page_content_ctn"
            itemscope
            itemtype="http://schema.org/Product"
          >
            <meta
              itemprop="image"
              content="https://cdn.cloudflare.steamstatic.com/steam/apps/2881230/capsule_231x87.jpg?t=1711990813"
            />
           

           
          

            <div class="block game_media_and_summary_ctn">
              <script type="text/javascript">
                var strRequiredVersion = "9";
                if (typeof g_bIsOnMac != "undefined" && g_bIsOnMac)
                  strRequiredVersion = "10.1.0";
              </script>

              <div class="game_background_glow">
                <div
                  data-panel='{"autoFocus":true,"focusable":true,"clickOnActivate":true}'
                  class="responsive_page_header_img"
                  style="display: none"
                >
                  <img
                    style="width: 100%"
                    src="https://cdn.cloudflare.steamstatic.com/steam/apps/2881230/header.jpg?t=1711990813"
                  />
                </div>

                <div
                  class="block_content page_content"
                  id="game_highlights"
                  data-panel='{"flow-children":"column"}'
                >
                  <div class="rightcol" data-panel='{"flow-children":"column"}'>
                    <div class="glance_ctn">
                      <div
                        id="gameHeaderImageCtn"
                        class="game_header_image_ctn"
                      >
                        <img
                          class="game_header_image_full"
                          src="/img/header/${product.name}_header.jpg"
                        />

                        <div
                          id="appHubAppName_responsive"
                          style="display: none"
                          class="apphub_AppName"
                        >
                        ${product.name}
                        </div>
                        <div
                          data-panel='{"type":"PanelGroup"}'
                          id="appHeaderGridContainer"
                          class="app_header_grid_container"
                          style="display: none"
                        >
                          <div class="grid_label">개발자</div>
                          <div class="grid_content">
                            <a
                              href="https://store.steampowered.com/developer/100CozyGames?snr=1_5_9__400"
                              >개발자 컬럼 추가하기</a
                            >
                          </div>
                          <div class="grid_label">배급사</div>
                          <div class="grid_content">
                            <a
                              href="https://store.steampowered.com/publisher/100CozyGames?snr=1_5_9__400"
                              >배급사 컬럼 추가하기</a
                            >
                          </div>

                          <div class="grid_label grid_date">출시일</div>
                          <div class="grid_content grid_date">
                           ${product.releasedate}
                          </div>
                        </div>
                      </div>
                      <div class="game_description_snippet">
                       ${product.simple}
                      </div>

                      <div class="glance_ctn_responsive_left">
                        <div id="userReviews" class="user_reviews">
                          <div
                            class="user_reviews_summary_row"
                            onclick="window.location='#app_reviews_hash'"
                            style="cursor: pointer"
                            data-tooltip-html="이 게임에 대한 사용자 평가 {댓글 평가 count 수}개 중 {긍정 / count * 100}%  가 긍정적입니다."
                            itemprop="aggregateRating"
                            itemscope
                            itemtype="http://schema.org/AggregateRating"
                          >
                            <div class="subtitle column all">모든 평가</div>
                            <div class="summary column">
                              <span
                                class="game_review_summary positive"
                                itemprop="description"
                                >if문으로 긍정 / count*100 결과에 따라 70긍정 80매우 90압도</span
                              >
                              <span class="responsive_hidden"> 평가 개수 </span>
                              <span
                                class="nonresponsive_hidden responsive_reviewdesc"
                              >
                                - "이 게임에 대한 사용자 평가 {댓글 평가 count 수}개 중 {긍정 / count * 100}%  가 긍정적입니다."
                              </span>

                              <!-- microdata -->

                            </div>
                          </div>
                        </div>

                        <div class="release_date">
                          <div class="subtitle column">출시일:</div>
                          <div class="date">{product.releasedate}</div>
                        </div>

                        <div class="dev_row">
                          <div class="subtitle column">개발자:</div>
                          <div class="summary column" id="developers_list">
                            <a
                              href="https://store.steampowered.com/developer/100CozyGames?snr=1_5_9__2000"
                              >{개발자 컬럼 추가}</a
                            >
                          </div>
                        </div>

                        <div class="dev_row">
                          <div class="subtitle column">배급사:</div>
                          <div class="summary column">
                            <a
                              href="https://store.steampowered.com/publisher/100CozyGames?snr=1_5_9__2000"
                              >{배급사 컬럼 추가}</a
                            >
                          </div>
                        </div>
                      </div>

                      <div
                        id="glanceCtnResponsiveRight"
                        class="glance_ctn_responsive_right"
                        data-panel='{"flow-children":"column"}'
                      >
                        <!-- when the javascript runs, it will set these visible or not depending on what fits in the area -->
                        <div class="responsive_block_header">장르</div>
                        <div
                          class="glance_tags_ctn popular_tags_ctn"
                          data-panel='{"flow-children":"row"}'
                        >
                          <div class="glance_tags_label">
                            장르:
                          </div>
                          <div
                            data-panel='{"flow-children":"row"}'
                            class="glance_tags popular_tags"
                            style="display: flex;"
                          >
                        <a
						  	  href=""
                              class="app_tag"
                              style="display: block"
                            >
                              캐주얼 </a
                            >
							<a

                              class="app_tag"
                              style="display: block"
                            >
                              퍼즐 </a
                            >
                          </div>
                        </div>

                        <div
                          id="reviewsHeader_responsive"
                          style="display: none"
                          class="responsive_block_header"
                        >
                          평가
                        </div>
                        <div
                          data-panel='{"focusable":true,"clickOnActivate":true}'
                          id="userReviews_responsive"
                          style="display: none"
                          class="user_reviews"
                          onclick="window.location='#app_reviews_hash'"
                        >
                          <div
                            id="appReviewsAll_responsive"
                            class="user_reviews_summary_row"
                            onclick="window.location='#app_reviews_hash'"
                            style="cursor: pointer"
                          >
                            <div class="subtitle column all">모든 평가</div>
                            <div class="summary column">
                              <span class="game_review_summary positive"
                                >{평균내서 조건문}</span
                              >
                              <span class="responsive_reviewdesc_short">
                                (?/?)&nbsp;<span class="desc_short"
                                  >전체</span
                                >
                              </span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div style="clear: both"></div>
                    </div>
                  </div>
                  
                  <div id="carouselExampleIndicators" class="carousel slide" style="max-width: 600px;">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
    
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/slide/${product.name}_slide1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/img/slide/${product.name}_slide2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/img/slide/${product.name}_slide3.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/img/slide/${product.name}_slide4.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/img/slide/${product.name}_slide5.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

                  <div style="clear: both"></div>
                </div>
              </div>

              <br><br>

                <!-- button area with share, follow, etc. for responsive ux -->
                <div
                  id="rowBtnActions"
                  data-panel='{"maintainY":true,"flow-children":"row"}'
                  style="display: none"
                ></div>
              </div>

              <div
                id="purchaseOptionsContent"
                class="purchase_options_content"
                style="display: none"
              >
                <!-- game_area_purchase goes here -->
              </div>
            </div>

            <div class="page_content" data-panel="[]">

              

                <div id="game_area_purchase" class="game_area_purchase">
                  <div class="game_area_purchase_game" >
                    <div class="game_area_purchase_platform">
                      <span class="platform_img win"></span>
                    </div>
                    <h1>${product.name} 플레이</h1>
                    <div class="game_purchase_action">
                      <div class="game_purchase_action_bg">
                        <c:choose>
                        <c:when test="${product.price == '0'}">  
                        <div class="game_purchase_price price">무료</div>
                        <div id="freeGameBtn" class="btn_addtocart">
                          <a
                            class="btn_green_steamui btn_medium"
                            href="/addToCart"
                          >
                            <span>장바구니에 추가</span>
                          </a>
                        </div>
                      </c:when>
                      <c:otherwise>
                      <div class="game_purchase_price price" style="margin-top: -10px;">${product.price}</div>
                        <div class="btn_addtocart" >
                          <a 
                          data-panel="{&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}" 
                          class="btn_green_steamui btn_medium" 
                          href="/addToCart;" 
                          id="btn_add_to_cart_116049">
							<span >장바구니에 추가</span>
						  </a>

						</div>
                      </c:otherwise>
                    </c:choose>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- game_area_purchase -->
     <div
                  id="bannerCommunity"
                  data-panel='{"focusable":true,"clickOnActivate":true}'
                  class="responsive_banner_link"
                  style="display: none"
                  onclick="window.location='https://steamcommunity.com/app/2881230'"
                >
                  <div
                    class="responsive_banner_link_title responsive_chevron_right"
                  >
                    커뮤니티 허브 보기
                  </div>
                </div>

                <div class="purchase_area_spacer">&nbsp;</div>

                <div data-featuretarget="events-row"></div>

                  <div id="game_area_description" class="game_area_description">
                    <table style="border:none">
                     <th style="text-align:center;"><h2>게임에 대해</h2></th>
                   
                      <tr>
                        <th>
              ${product.detail}
                        </th>
                      </tr>
                    </table>
                  </div>
                </div>
    

              <div style="clear: both"></div>
            

            <div class="review_ctn">
              <div class="page_content">
                <div id="app_reviews_hash" class="app_reviews_area">
                  <h2 class="user_reviews_header no_bottom_margin">
                    고객 평가
                  </h2>

            

                  <div
                    id="review_recent_events_container"
                    class="review_recent_events"
                  ></div>
                  <div id="review_histograms_container" class="collapsed">
                    <canvas id="review_graph_canvas"></canvas>
                    <div
                      id="review_histogram_rollup_section"
                      class="review_histogram_section"
                    >
                      <div class="user_reviews_summary_bar">
                        <div class="summary_section">
                          <div class="title">종합 평가:</div>
                          <span
                            class="game_review_summary positive"
                            data-tooltip-html="이 게임에 대한 사용자 평가 ?개 중 ?% 가 긍정적입니다."
                            >매우 긍정적</span
                          >
                          <span>(평가 ? 개)</span>
                        </div>
                      </div>
                      <div
                        id="review_histogram_rollup_container"
                        class="review_histogram"
                      >
                      </div>
                    </div>
                  </div>

                  <div
                    id="reviews_filter_options"
                    class="user_reviews_filter_options flyout graph_collapsed"
                  >
                    <div class="user_reviews_filter_menu">
                      <div class="title">평가 유형</div>
                      <div class="user_reviews_filter_menu_flyout">
                        <div class="user_reviews_filter_menu_flyout_content">
                          <input
                            type="radio"
                            name="review_type"
                            value="all"
                            id="review_type_all"
                            checked
                            onchange="ShowFilteredReviews()"
                          />
                          <label for="review_type_all"
                            >전체&nbsp;<span class="user_reviews_count"
                              >(82)</span
                            ></label
                          ><br />
                          <input
                            type="radio"
                            name="review_type"
                            value="positive"
                            id="review_type_positive"
                            onchange="ShowFilteredReviews()"
                          />
                          <label for="review_type_positive"
                            >긍정적&nbsp;<span class="user_reviews_count"
                              >(80)</span
                            ></label
                          ><br />
                          <input
                            type="radio"
                            name="review_type"
                            value="negative"
                            id="review_type_negative"
                            onchange="ShowFilteredReviews()"
                          />
                          <label for="review_type_negative"
                            >부정적&nbsp;<span class="user_reviews_count"
                              >(2)</span
                            ></label
                          >
                        </div>
                      </div>
                    </div>

                  </div>
                  <div id="Reviews_summary" class="user_reviews_container">
                    <div>
                      <div class="leftcol"></div>
                     
     

                        <div class="review_box">
                          <div class="noReviewsYetTitle">
                            위에서 설정한 필터 조건에 맞는 평가가 없습니다
                          </div>
                          <div class="noReviewsYetSub">
                            다른 평가를 보려면 위에서 필터를 조정해주세요
                          </div>
                          <div style="clear: left; height: 40px"></div>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
<!-- footer 영역 -->
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
      <!-- responsive_page_content -->
    </div>
    <!-- responsive_page_frame -->
    

  </body>
</html>
