<%-- 
    Document   : Header
    Created on : 12-03-2020, 15:30:04
    Author     : nhat anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class="">
    <title>Home</title>
    <body data-pid="423587158" data-iid="">
        <div class="container-fluid site-wrapper">
            <%@include file="Header.jsp" %>
            <div class="container-fluid content-wrapper" id="content"> 
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> 
                            <div class="wrapper ">                               
                                <div class="content">
                                    <div class="section article">
                                        <style>    .wordwrapfix {
                                                word-wrap:break-word;
                                            }
                                        </style>

                                        <div class="content">
                                            <div class="img-simple">
                                                <div class="image">
                                                    <a class="fancybox" rel="group" href="./Images/${display.img}"><img src="./Images/${display.img}"/></a>
                                               
                                                </div>
                                                <i>${display.title}</i>
                                            </div>

                                            <ul class="thumbnails " style="padding-top: 55px;">
                                                <li class="span5"style="margin-right:  60px;">
                                                    <h4>
                                                        <a href="About">About me</a>
                                                    </h4>

                                                    <p><span style="font-size: 16px;"><span data-mce-mark="1">${display.content}</span></p>                                                </li>
                                                <li class="span5">
                                                    <h4>
                                                        <a href="Contact">Contact</a>
                                                        <p id="demo"></p>

                                                    </h4>
                                                    <p><span style="font-size: 16px;"><span data-mce-mark="1">${display.content}</span></p>                                                </li>
                                            </ul>

                                        </div>

                                    </div>

                                </div>    

                            </div>
                        </div>
                        <%@include file="Footer.jsp" %>

                    </div>
                    </body>
                    </html>
