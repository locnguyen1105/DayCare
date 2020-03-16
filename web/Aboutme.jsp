<%-- 
    Document   : Aboutme
    Created on : 14-03-2020, 13:20:32
    Author     : nhat anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class="">
    <title>About Us</title>
    <body data-pid="423587166" data-iid="">
        <div class="container-fluid site-wrapper"> <!-- this is the Sheet -->
            <%@include file="Header.jsp" %>
            <div class="container-fluid content-wrapper" id="content"> <!-- this is the Content Wrapper -->
                <div class="container">
                    <div class="row-fluid content-inner">
                        <div id="left" class="span9"> <!-- ADD "span12" if no sidebar, or "span9" with sidebar -->
                            <div class="wrapper ">
                                <div class="content">
                                    <div class="section article">
                                        
                                        <div class="heading wordwrapfix">
                                            <h3 style="font-family: 'Comic Sans MS', cursive, sans-serif;">About Us</h3>
                                        </div>

                                        <div class="content">
                                            <div class="img-simple span3 pull-left">
                                                <div class="image">
                                                    <a class="fancybox" rel="group" href="./Images/${about.img}"><img src="./Images/${about.img}"/></a>
                                                </div>
                                            </div>
                                            <div class="country"> <p><span>${about.description}</span></p>
                                             
                                            </div>   
                                        </div>
                                     
                                    </div>
                                </div>


                            </div>
                        </div>
                        <%@include file="Footer.jsp"%>
                    </div>
                    </body>
                    </html>
