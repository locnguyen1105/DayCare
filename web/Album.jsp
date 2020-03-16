<%-- 
    Document   : Album
    Created on : 14-03-2020, 13:51:53
    Author     : nhat anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en-US" class="">
    <title>Photo Album</title>
    <body data-pid="423587159" data-iid="">
        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <%@include file="Header.jsp" %>
            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper  photo-album photo-album-compact">
                                <div class="heading wordwrapfix">
                                    <h3 style="font-family: 'Comic Sans MS', cursive, sans-serif;">Photo Album</h3>
                                </div>

                                <div class="content">
                                    <div class="section article">
                                        <style>    .wordwrapfix {
                                                word-wrap:break-word;

                                            }
                                        </style>
                                        <div class="section">
                                            <div class="content">   
                                                <div class="slideshow slider-wrapper"> 
                                                    <div data-ss="slider" data-speed="5000" data-effect="fade">

                                                        <div>
                                                            <c:forEach var="al" items="${album}">
                                                                <a class="fancybox" rel="group" href="./Images/${al.img}"><img class="mySlides"  src="./Images/${al.img}" /></a>
                                                                </c:forEach>
                                                            <button class="w3-button w3-display-left " onclick="plusDivs(-1)">&#10094;</button>
                                                            <button class="w3-button w3-display-right " onclick="plusDivs(1)">&#10095;</button>
                                                        </div>    
                                                    </div> 
                                                </div>   
                                            </div>
                                        </div>


                                        <div class="section">
                                            <div class="content">
                                                <ul class="thumbnails " >
                                                    <c:forEach var="al" items="${album}">
                                                        <li class="span4 pull-right ">
                                                            <div>
                                                                <div class="thumbnail ">
                                                                    <a class="fancybox" rel="group" href="./Images/${al.img}"><img src="./Images/${al.img}"/></a>
                                                                </div>
                                                            </div>                         
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                       </div>
                                    </div>
                                </div>
                            </div>                           
                        </div>
                        <%@include file="Footer.jsp" %>
                    </div>
                    <style>
                        w3-btn,.w3-button{border:none;display:inline-block;padding:8px 16px;vertical-align:middle;overflow:hidden;text-decoration:none;color:inherit;background-color:inherit;text-align:center;cursor:pointer;white-space:nowrap}
                        .w3-btn,.w3-button{-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}   
                        .w3-display-left{position:absolute;top:50%;left:0%;transform:translate(0%,-50%);-ms-transform:translate(-0%,-50%)}
                        .w3-display-right{position:absolute;top:50%;right:0%;transform:translate(0%,-50%);-ms-transform:translate(0%,-50%)}
                        .w3-button:hover{color:#000!important;background-color:#ccccff!important}
                    </style>
                    <script>
                        var myIndex = 0;
                        carousel();

                        function carousel() {
                            var i;
                            var x = document.getElementsByClassName("mySlides");
                            for (i = 0; i < x.length; i++) {
                                x[i].style.display = "none";
                            }
                            myIndex++;
                            if (myIndex > x.length) {
                                myIndex = 1
                            }
                            x[myIndex - 1].style.display = "block";
                            setTimeout(carousel, 3500); // Change image every 2 seconds
                        }
                    </script>
                    <script>
                        var slideIndex = 1;
                        showDivs(slideIndex);

                        function plusDivs(n) {
                            showDivs(slideIndex += n);
                        }

                        function showDivs(n) {
                            var i;
                            var x = document.getElementsByClassName("mySlides");
                            if (n > x.length) {
                                slideIndex = 1
                            }
                            if (n < 1) {
                                slideIndex = x.length
                            }
                            for (i = 0; i < x.length; i++) {
                                x[i].style.display = "none";
                            }
                            x[slideIndex - 1].style.display = "block";
                        }
                    </script>


                    </body>
                    </html>
