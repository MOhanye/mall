<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <%@include file="common.jsp"%>
    <title>商品</title>
   <%@include file="common/head.jsp"%>
</head>
<body>
<!--header-->
<%@include file="common/header.jsp"%>

<div class="container">
    <div class="products">
        <h2 class=" products-in">商品</h2>
        <div class=" top-products">
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md">--%>
                    <%--<a href="single.html" class="compare-in"><img  src="${ctx}/static/img/pic.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                           <%----%>
                            <%--<span>加入收藏</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5><a href="single.jsp">Popular belief</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
                <c:forEach items="${requestScope.spb}" var="vc">

                <div class="col-md-3 md-col">
                    <div class="col-md">
                        <a href="single.html" class="compare-in"><img  src="${ctx}${vc.img}" alt="" />
                            <div class="compare">

                                <span>加入收藏</span>
                            </div>
                        </a>
                        <div class="top-content">
                            <h5><a href="single.jsp">${fn:substring(vc.sname,0,15)}</a></h5>
                            <div class="white">
                                <a href="${ctx}/single?sid=${vc.sid}" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">查看详情</a>
                                <p class="dollar"><span class="in-dollar">$</span><span>${vc.xinmoney}</span></p>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md">--%>
                    <%--<a href="single.html" class="compare-in"><img  src="${ctx}/static/img/pic1.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5><a href="single.jsp" >Simply random</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>6</span><span>0</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md">--%>
                    <%--<a href="single.jsp" class="compare-in"><img  src="${ctx}/static/img/pic2.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5> <a href="single.jsp">Classical Latin</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>1</span><span>5</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md">--%>
                    <%--<a href="single.jsp" class="compare-in"><img  src="${ctx}/static/img/pic3.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5><a href="single.jsp">Standard chunk</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>4</span><span>0</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
        <%--<div class=" top-products">--%>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md">--%>
                    <%--<a href="single.jsp" class="compare-in"><img  src="${ctx}/static/img/pic4.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5><a href="single.jsp">Simply random</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>5</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md">--%>
                    <%--<a href="single.html" class="compare-in"><img  src="${ctx}/static/img/pic5.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5><a href="single.jsp">Popular belief</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>5</span><span>5</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md ">--%>
                    <%--<a href="single.jsp" class="compare-in"><img  src="${ctx}/static/img/pic6.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5> <a href="single.jsp">Classical Latin</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>3</span><span>0</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md ">--%>
                    <%--<a href="single.jsp" class="compare-in"><img  src="${ctx}/static/img/pic7.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5><a href="single.jsp">Standard chunk</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>6</span><span>0</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
        <%--<div class="top-products">--%>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md">--%>
                    <%--<a href="single.jsp" class="compare-in" ><img  src="${ctx}/static/img/pic8.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5> <a href="single.jsp">Classical Latin</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md">--%>
                    <%--<a href="single.jsp" class="compare-in"><img  src="${ctx}/static/img/pic9.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5><a href="single.jsp">Standard chunk</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>1</span><span>5</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md">--%>
                    <%--<a href="single.jsp" class="compare-in"><img  src="${ctx}/static/img/pic10.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5><a href="single.jsp">Simply random</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>4</span><span>0</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 md-col">--%>
                <%--<div class="col-md">--%>
                    <%--<a href="single.jsp" class="compare-in"><img  src="${ctx}/static/img/pic11.jpg" alt="" />--%>
                        <%--<div class="compare">--%>
                            <%--<span>Add to Compare</span>--%>
                            <%--<span>Add to Wishlist</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                    <%--<div class="top-content">--%>
                        <%--<h5><a href="single.jsp">Popular belief</a></h5>--%>
                        <%--<div class="white">--%>
                            <%--<a href="single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>--%>
                            <%--<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>9</span></p>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <div class="clearfix"></div>
        </div>
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
                    <li><a href="contact.html">Contact Us</a></li>
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