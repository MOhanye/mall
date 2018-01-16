<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <%@include file="common.jsp"%>
    <title>Wishlist</title>
   <%@include file="common/head.jsp"%>
    <style>
        *{
            padding: 0;
            margin: 0 auto;
        }
        .unit{ list-style: none; width: auto; height: auto}
        .unit li {float: left; width: 270px}
        .unit li:nth-child(1){margin-left: 400px}
    </style>
</head>
<body>
<!--header-->
<%@include file="common/header.jsp"%>


<div class="in-check">
    <ul class="unit">

        <li ><span>商品名称</span></li>
        <li><span>单价</span></li>
        <li><span>数量</span></li>
        <li><span>总价</span></li>
        <li> </li>
        <div class="clearfix"> </div>
    </ul>
    <c:forEach items="${requestScope.dingdan}" var="dingdan">

        <ul class="unit" name="${dingdan.sid} ">
                <%--<input type="hidden" value="${car.cid}" class="cid">--%>
                <%--<input type="hidden" value="${car.sid}" class="sid">--%>


            <li><span>${fn:substring(dingdan.sname,0 ,15 )}</span></li>
            <li><span>${dingdan.xinmoney}</span></li>
            <%--<li><input type="number" value="${dingdan.shuliang}" min="1"/></li>--%>
                    <li><span>${dingdan.shuliang}</span></li>
            <li><span>${dingdan.zongjia}</span></li>
            <%--<input class="shanchu" type="button" value="删除"/>--%>
           <%-- <input type="hidden" value="${car.sid}" name="sid" class="sid">
            <input type="hidden" value="${car.cid}" name="cid" class="cid">

            <form action="dingdan?cid=${car.cid}&sid=${car.sid}" method="post">
                <input class="goumai" type="submit" value="购买"/>
            </form>

            <<input type="text" value="${car.sid}">--%>


        </ul>



        <%--  <div class="close1"></div>
          <li class="ring-in" value="${car.sid}"><a href="" ><img src="${car.username}" class="img-responsive" alt=""></a></li>

          <li><span class="name"  title="${car.name}">${fn:substring(car.name,0 ,15 )}</span></li>
                 <input type="text" value=""/>
                      &lt;%&ndash;${fn:substring(cart.name,0 ,15 )}&ndash;%&gt;
         <li>${car.xinmoney}</li>
          <input  name="count" value="${car.shuliang}"/>
          <li><input> class="cost$${cart.xinmoney}/></li>
          <div class="clearfix"> <input type="number" value="购买"/></div>--%>


    </c:forEach>
</div>
<div class="container">
    <div class="wish-list">
        <h6><a href="#">Product Name</a>	<a href="#">Unit Price</a>	<a href="#">Stock Status</a></h6>
        <p>No products were added to the wishlist</p>
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