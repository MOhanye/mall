<%--
  Created by IntelliJ IDEA.
  User: 79304
  Date: 2017/11/16 0016
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
  <head>
    <title>Home</title>
  <%@include file="common/head.jsp"%>
  </head>
  <body>
  <!--header-->
 <%@include file="common/header.jsp"%>
  <div class="banner-mat">
    <div class="container">
      <div class="banner">

        <!-- Slideshow 4 -->
        <div class="slider">
          <ul class="rslides" id="slider1">
            <li><img src="${ctx}/static/img/banner.jpg" alt="">
            </li>
            <li><img src="${ctx}/static/img/banner1.jpg" alt="">
            </li>
            <li><img src="${ctx}/static/img/banner.jpg" alt="">
            </li>
            <li><img src="${ctx}/static/img/banner2.jpg" alt="">
            </li>
          </ul>
        </div>

        <div class="banner-bottom">
          <div class="banner-matter">
            <p> Gambino童装 -惊爆价 $9.99</p>
            <a href="single.jsp" class="hvr-shutter-in-vertical ">Purchase</a>
          </div>
          <%--<div class="purchase">--%>
            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Purchase</a>--%>
          <%--</div>--%>
          <div class="clearfix"></div>
        </div>
      </div>
      <!-- //slider-->
    </div>
  </div>
  <!---->
  <div class="container">
    <div class="content">
      <div class="content-top">
        <h3 class="future">精选</h3>

        <div class="content-top-in">
          <c:forEach items="${applicationScope.sysp}" var="sy">
          <div class="col-md-3 md-col">
            <div class="col-md">
             <%--<c:forEach items="${applicationScope.sysp}" var="sy">--%>
                <a href="single.jsp"><img src="${ctx}${sy.img}" alt="" /></a>
              <%--</c:forEach>--%>
              <%--<a href="single.jsp"><img  src="${ctx}" alt="" /></a>--%>
              <div class="top-content">
                <h5><a href="single.jsp">${fn:substring(sy.sname,0 ,15 )}</a></h5>
                <div class="white">

                  <a href="${ctx}/single?sid=${sy.sid}" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">查看详情</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>${sy.xinmoney}</span></p>
                  <div class="clearfix"></div>
                </div>

              </div>
            </div>
          </div>
          </c:forEach>

          <div class="clearfix"></div>
        </div>
      </div>
      <!---->
      <div class="content-middle">
        <h3 class="future">知名品牌</h3>
        <div class="content-middle-in">
          <ul id="flexiselDemo1">
            <li><img src="${ctx}/static/img/ap.png"/></li>
            <li><img src="${ctx}/static/img/ap1.png"/></li>
            <li><img src="${ctx}/static/img/ap2.png"/></li>
            <li><img src="${ctx}/static/img/ap3.png"/></li>

          </ul>
          <script type="text/javascript">
              $(window).load(function() {
                  $("#flexiselDemo1").flexisel({
                      visibleItems: 4,
                      animationSpeed: 1000,
                      autoPlay: true,
                      autoPlaySpeed: 3000,
                      pauseOnHover: true,
                      enableResponsiveBreakpoints: true,
                      responsiveBreakpoints: {
                          portrait: {
                              changePoint:480,
                              visibleItems: 1
                          },
                          landscape: {
                              changePoint:640,
                              visibleItems: 2
                          },
                          tablet: {
                              changePoint:768,
                              visibleItems: 3
                          }
                      }
                  });

              });
          </script>
          <script type="text/javascript" src="${ctx}/static/js/jquery.flexisel.js"></script>

        </div>
      </div>
      <!---->
      <div class="content-bottom">
        <h3 class="future">最新活动</h3>
        <div class="content-bottom-in">
          <ul id="flexiselDemo2">
            <li><div class="col-md men">
              <a href="single.jsp" class="compare-in "><img src="${ctx}/static/img/pi4.jpg" alt="" />
                <div class="compare in-compare">
                  <span>Add to Compare</span>
                  <span>Add to Wishlist</span>
                </div></a>
              <div class="top-content bag">
                <h5><a href="single.jsp">Symbolic Bag</a></h5>
                <div class="white">
                  <a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>4</span><span>0</span></p>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div></li>
            <li><div class="col-md men">
              <a href="single.jsp" class="compare-in "><img src="${ctx}/static/img/pi5.jpg" alt="" />
                <div class="compare in-compare">
                  <span>Add to Compare</span>
                  <span>Add to Wishlist</span>
                </div></a>
              <div class="top-content bag">
                <h5><a href="single.jsp">Interesting Read</a></h5>
                <div class="white">
                  <a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>2</span><span>5</span></p>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div></li>
            <li><div class="col-md men">
              <a href="single.jsp" class="compare-in "><img src="${ctx}/static/img/pi6.jpg" alt="" />
                <div class="compare in-compare">
                  <span>Add to Compare</span>
                  <span>Add to Wishlist</span>
                </div></a>
              <div class="top-content bag">
                <h5><a href="single.jsp">The Carter</a></h5>
                <div class="white">
                  <a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>1</span><span>0</span></p>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div></li>
            <li><div class="col-md men">
              <a href="single.jsp" class="compare-in "><img src="${ctx}/static/img/pi7.jpg" alt="" />
                <div class="compare in-compare">
                  <span>Add to Compare</span>
                  <span>Add to Wishlist</span>
                </div></a>
              <div class="top-content bag">
                <h5><a href="single.jsp">Onesie</a></h5>
                <div class="white">
                  <a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
                  <p class="dollar"><span class="in-dollar">$</span><span>6</span><span>0</span></p>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div></li>

          </ul>
          <script type="text/javascript">
              $(window).load(function() {
                  $("#flexiselDemo2").flexisel({
                      visibleItems: 4,
                      animationSpeed: 1000,
                      autoPlay: true,
                      autoPlaySpeed: 3000,
                      pauseOnHover: true,
                      enableResponsiveBreakpoints: true,
                      responsiveBreakpoints: {
                          portrait: {
                              changePoint:480,
                              visibleItems: 1
                          },
                          landscape: {
                              changePoint:640,
                              visibleItems: 2
                          },
                          tablet: {
                              changePoint:768,
                              visibleItems: 3
                          }
                      }
                  });

              });
          </script>
        </div>
      </div>
      <ul class="start">
        <li ><a href="#"><i></i></a></li>
        <li><span>1</span></li>
        <li class="arrow"><a href="#">2</a></li>
        <li class="arrow"><a href="#">3</a></li>
        <li class="arrow"><a href="#">4</a></li>
        <li class="arrow"><a href="#">5</a></li>
        <li ><a href="#"><i  class="next"> </i></a></li>
      </ul>
    </div>
  </div>
  <!---->
  <div class="footer">
    <div class="footer-top">
      <div class="container">
        <div class="col-md-4 footer-in">
          <h4><i> </i>Suspendisse sed</h4>
          <p>Aliquam dignissim porttitor tortor non fermentum. Curabitur in magna lectus. Duis sed eros diam. Lorem ipsum dolor sit amet, consectetur.</p>
        </div>
        <div class="col-md-4 footer-in">
          <h4><i class="cross"> </i>Suspendisse sed</h4>
          <p>Aliquam dignissim porttitor tortor non fermentum. Curabitur in magna lectus. Duis sed eros diam. Lorem ipsum dolor sit amet, consectetur.</p>
        </div>
        <div class="col-md-4 footer-in">
          <h4><i class="down"> </i>Suspendisse sed</h4>
          <p>Aliquam dignissim porttitor tortor non fermentum. Curabitur in magna lectus. Duis sed eros diam. Lorem ipsum dolor sit amet, consectetur.</p>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <!---->
    <div class="footer-middle">
      <div class="container">
        <div class="footer-middle-in">
          <h6>About us</h6>
          <p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel tincidunt elementum, nunc urna tristique nisi, in interdum libero magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
        </div>
        <div class="footer-middle-in">
          <h6>Information</h6>
          <ul>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Delivery Information</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Terms & Conditions</a></li>
          </ul>
        </div>
        <div class="footer-middle-in">
          <h6>Customer Service</h6>
          <ul>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="#">Returns</a></li>
            <li><a href="#">Site Map</a></li>
          </ul>
        </div>
        <div class="footer-middle-in">
          <h6>My Account</h6>
          <ul>
            <li><a href="account.jsp">My Account</a></li>
            <li><a href="#">Order History</a></li>
            <li><a href="wishlist.jsp">Wish List</a></li>
            <li><a href="#">Newsletter</a></li>
          </ul>
        </div>
        <div class="footer-middle-in">
          <h6>Extras</h6>
          <ul>
            <li><a href="#">Brands</a></li>
            <li><a href="#">Gift Vouchers</a></li>
            <li><a href="#">Affiliates</a></li>
            <li><a href="#">Specials</a></li>
          </ul>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <p class="footer-class">Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
    <script type="text/javascript">
        $(document).ready(function() {
            /*
            var defaults = {
                  containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear'
             };
            */

            $().UItoTop({ easingType: 'easeOutQuart' });

        });
    </script>
    <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

  </div>
  </body>
</html>
