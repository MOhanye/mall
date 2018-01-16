<%--
  Created by IntelliJ IDEA.
  User: 79304
  Date: 2017/11/20 0020
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common.jsp"%>
<div class="header">
    <div class="header-top">
        <div class="container">
            <div class="header-top-in">
                <div class="logo">
                    <a href="${ctx}/mall"><img src="${ctx}/static/img/logo.png" alt=" " ></a>
                </div>
                <div class="header-in">
                    <ul class="icon1 sub-icon1">
                        <li  ><a href="cxdd">订单表</a> </li>
                        <c:choose>
                        <c:when test="${sessionScope.get('username') == null}">

                        <li  ><a href="${ctx}/user/TDengLu">  登陆</a></li>
                        </c:when>
                        <c:otherwise>
                            <li  ><a href="${ctx}/user/zhuxiao"> 注销</a></li>
                        </c:otherwise>
                        </c:choose>
                        <li ><a href="#" > 购物车</a></li>
                        <li > <a href="xscar" >付款</a> </li>

                        <li><div class="cart">
                            <a href="#" class="cart-in"> </a>
                            <span> 0</span>
                        </div>
                            <ul class="sub-icon1 list">
                                <h3>最近添加的商品(2)</h3>
                                <div class="shopping_cart">
                                    <div class="cart_box">
                                        <div class="message">
                                            <div class="alert-close"> </div>
                                            <div class="list_img"><img src="${ctx}/static/img/14.jpg" class="img-responsive" alt=""></div>
                                            <div class="list_desc"><h4><a href="#">velit esse molestie</a></h4>1 x<span class="actual">
		                             $12.00</span></div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="cart_box1">
                                        <div class="message1">
                                            <div class="alert-close1"> </div>
                                            <div class="list_img"><img src="${ctx}/static/img/15.jpg" class="img-responsive" alt=""></div>
                                            <div class="list_desc"><h4><a href="#">velit esse molestie</a></h4>1 x<span class="actual">
		                             $12.00</span></div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="total">
                                    <div class="total_left">购物车小计 : </div>
                                    <div class="total_right">$250.00</div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="login_buttons">
                                    <div class="check_button"><a href="../checkout.jsp">结账</a></div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="clearfix"></div>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <div class="h_menu4">
                <a class="toggleMenu" href="#">Menu</a>
                <ul class="nav">
                    <li class="active"><a href="${ctx}/mall"><i> </i>主页</a></li>
                    <%--<li ><a href="#" >电脑 & 笔记本</a>--%>
                        <%--<ul class="drop">--%>
                            <%--<li><a href="products.jsp">索尼(2)</a></li>--%>
                            <%--<li><a href="products.jsp">安卓机(4)</a></li>--%>
                            <%--<li><a href="products.jsp">苹果(7)</a></li>--%>
                            <%--<li><a href="products.jsp">宏基(53)</a></li>--%>
                            <%--<li><a href="products.jsp">HP(78)</a></li>--%>
                            <%--<li><a href="products.jsp">Intel(5)</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<li><a href="products.jsp" >  平板电脑</a></li>--%>
                    <%--<li><a href="products.jsp" >百货</a></li>--%>
                    <%--<li><a href="products.jsp" >软件</a></li>--%>
                    <%--<li><a href="products.jsp" >手机和手机部件 </a></li>--%>
                    <%--<li><a href="products.jsp" >  相机  </a></li>--%>
                    <c:forEach items="${applicationScope.cbs}" var="cb">
                    <li ><a href="${ctx}/products?fid=${cb.queryfens.fid}" >${cb.queryfens.fenlei}</a>
                        <ul class="drop">
                            <c:forEach items="${cb.queryguanl}" var="guanl">
                                <li><a href="${ctx}/products?fid=${cb.queryfens.fid}&pid=${guanl.pid}">${guanl.pinpai} </a></li>
                            </c:forEach>


                        </ul>
                        </li>
                    </c:forEach>
                    <li><a href="contact.jsp" >联系我们 </a></li>

                </ul>
                <script type="text/javascript" src="${ctx}/static/js/nav.js"></script>
            </div>
        </div>
    </div>
    <div class="header-bottom-in">
        <div class="container">
            <div class="header-bottom-on">
                <c:choose>
                <c:when test="${sessionScope.get('username') == null}">
                <p class="wel"><a href="../zhuce.jsp">欢迎访问您可以说登录或创建用户</a></p>
                </c:when>
                <c:otherwise >
                    <p class="wel"><a href="#">欢迎${sessionScope.get('username')}</a></p>
                </c:otherwise>
                </c:choose>
                <div class="header-can">
                    <ul class="social-in">
                        <li><a href="#"><i> </i></a></li>
                        <li><a href="#"><i class="facebook"> </i></a></li>
                        <li><a href="#"><i class="twitter"> </i></a></li>
                        <li><a href="#"><i class="skype"> </i></a></li>
                    </ul>
                    <div class="down-top">
                        <select class="in-drop">
                            <option value="Dollars" class="in-of">美元</option>
                            <option value="Euro" class="in-of">欧元</option>
                            <option value="Yen" class="in-of">人民币</option>
                        </select>
                    </div>
                    <div class="search">
                        <form action="products" method="get">
                            <input type="text" value="Search" name="mname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
                            <input type="submit" value="">
                        </form>
                    </div>

                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>