<%--
  Created by IntelliJ IDEA.
  User: Telega
  Date: 7/28/2018
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Главная</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <link rel="stylesheet" href="css/Style_header.css"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Style_index.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css">
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>
<body>
    <%--<a href="${pageContext.request.contextPath}/registration">REGISTRATION</a>--%>
    <%--<a href="${pageContext.request.contextPath}/login">LOGIN</a>--%>

    <%--<c:if test="${loggedIn}">--%>
        <%--<c:if test="${user.emailConfirmed}">--%>
            <%--<p> Hi ${user.email}, ty for confirming email</p>--%>
        <%--</c:if>--%>
        <%--<c:if test="${!user.emailConfirmed}">--%>
            <%--<p> Hi ${user.email}, please confirm email</p>--%>
        <%--</c:if>--%>
    <%--</c:if>--%>




    <div class="bodyBack">
        <header>
            <jsp:include page="header.jsp"/>
        </header>

        <main>
            <div class="mainContainer">

                <div class="mainCenter">
                    <div class="divBlockMargin">
                        <div class="sdf">
                            <span>Популярное</span>
                            <span class="more">Подробнее >></span>
                        </div>
                        <div class="imgPosition">
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/BILLBOARD HOT 100 SINGLES CHART [28.07].png" alt="">
                                <span>BILLBOARD HOT 100 SINGLES CHART [28.07]</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/BLUES FOREVER. VOL.82.jpg" alt="">
                                <span>BLUES FOREVER. VOL.82</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/DANCE VIBES.png" alt="">
                                <span>DANCE VIBES</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/DEEP HOUSE COLLECTION VOL.180.png" alt="">
                                <span>DEEP HOUSE COLLECTION VOL.180</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/DE-PHAZZ - BLACK WHITE MONO.jpg" alt="">
                                <span>DE-PHAZZ - BLACK WHITE MONO</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/EUROPA PLUS.png" alt="">
                                <span>EUROPA PLUS</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/FAB SAMPERI - MOONSHINE CROSSROADS.jpg" alt="">
                                <span>FAB SAMPERI - MOONSHINE CROSSROADS</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/FRANK SINATRA - THE COLLECTION [VINYL-RIP].jpg" alt="">
                                <span>FRANK SINATRA - THE COLLECTION [VINYL-RIP]</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/HEDKANDI IBIZA.jpg" alt="">
                                <span>HEDKANDI IBIZA</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/IBIZA OPENING FIESTA.jpg" alt="">
                                <span>IBIZA OPENING FIESTA</span>
                            </div>
                        </div>
                    </div>
                    <!-- --------------------------------------------------------------------------- -->
                    <div class="divBlockMargin">
                        <div class="sdf">
                            <span>Новинки</span>
                            <span class="more">Подробнее >></span>
                        </div>
                        <div class="imgPosition">
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/LEAVES' EYES - SIGN OF THE DRAGONHEAD [LIMITED EDITION].jpg" alt="">
                                <span>LEAVES' EYES - SIGN OF THE DRAGONHEAD [LIMITED EDITION]</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/MAD HATTER - MAD HATTER [JAPANESE EDITION].jpg" alt="">
                                <span>MAD HATTER - MAD HATTER [JAPANESE EDITION]</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/MEGA DANCE SUMMER VOL.5.png" alt="">
                                <span>MEGA DANCE SUMMER VOL.5</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/METALLICA - TIME FOR ONE...OR 3...OR 7 [EP].png" alt="">
                                <span>METALLICA - TIME FOR ONE...OR 3...OR 7 [EP]</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/NERVOSA - DOWNFALL OF MANKIND [LIMITED EDITION].jpg" alt="">
                                <span>NERVOSA - DOWNFALL OF MANKIND [LIMITED EDITION]</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/PYTHIUS - DESCEND.jpg" alt="">
                                <span>PYTHIUS - DESCEND</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/RADIO DFM.png" alt="">
                                <span>RADIO DFM</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/RAMESES B - SPACEWALK II.jpg" alt="">
                                <span>RAMESES B - SPACEWALK II</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/SEXY FUNKY HOUSE GROOVES VOL.3.png" alt="">
                                <span>SEXY FUNKY HOUSE GROOVES VOL.3</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/SUMMER SOL III.jpg" alt="">
                                <span>SUMMER SOL III</span>
                            </div>
                        </div>
                    </div>
                    <!-- --------------------------------------------------------------------------------- -->
                    <!-- --------------------------------------------------------------------------- -->
                    <div class="divBlockMargin">
                        <div class="sdf">
                            <span>Горячая десятка</span>
                            <span class="more">Подробнее >></span>
                        </div>
                        <div class="imgPosition">
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/THE SOUND OF DRUM AND BASS 2018 (VIPER PRESENTS).jpg" alt="">
                                <span>THE SOUND OF DRUM AND BASS 2018 (VIPER PRESENTS)</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/TOP LOVE SONGS.jpg" alt="">
                                <span>TOP LOVE SONGS</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/TRILLIUM (AMANDA SOMERVILLE) - TECTONIC.jpg" alt="">
                                <span>TRILLIUM (AMANDA SOMERVILLE) - TECTONIC</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/VOCAL DRUM & BASS VOL.14.jpg" alt="">
                                <span>VOCAL DRUM & BASS VOL.14</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/ДИСКОТЕКА 2018 DANCE CLUB VOL. 181.png" alt="">
                                <span>ДИСКОТЕКА 2018 DANCE CLUB VOL. 181</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/ДИСКОТЕКА 2018 DEEP HOUSE.png" alt="">
                                <span>ДИСКОТЕКА 2018 DEEP HOUSE</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/ЗАЙЦЕВ.НЕТ.png" alt="">
                                <span>ЗАЙЦЕВ НЕТ</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/ЛЕНИНГРАД - НЕ ПАРИЖ.jpg" alt="">
                                <span>ЛЕНИНГРАД - НЕ ПАРИЖ</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/ЛЕТО ПОПУЛЯРНЫЕ РУССКИЕ ПЕСНИ.png" alt="">
                                <span>ЛЕТО ПОПУЛЯРНЫЕ РУССКИЕ ПЕСНИ</span>
                            </div>
                            <div class="imgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/posters/ЛУЧШИЕ ИЗ ЛУЧШИХ.png" alt="">
                                <span>ЛУЧШИЕ ИЗ ЛУЧШИХ</span>
                            </div>
                        </div>
                    </div>
                    <!-- --------------------------------------------------------------------------------- -->
                </div>


                <div class="mainRight">
                    <div class="blockGame">
                        <span>Проийди игру и иди на уй</span>
                        <button>Начать</button>
                    </div>
                    <div class="hotArtist">
                        <!-- <div class="hotArtistDivBlockMargin"> -->
                        <div class="hotArtistSdf">
                            <span>Артисты</span>
                            <span class="moreArt">Подробнее >></span>
                        </div>
                        <div class="hotArtistImgPosition">
                            <div class="hotArtistImgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/art/drake.jpg" alt="">
                                <span>Drake</span>
                            </div>
                            <div class="hotArtistImgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/art/matrang.jpg" alt="">
                                <span>Matrang</span>
                            </div>
                            <div class="hotArtistImgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/art/rihanna.jpg" alt="">
                                <span>Rihanna</span>
                            </div>
                            <div class="hotArtistImgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/art/enrike.jpg" alt="">
                                <span>Enrike</span>
                            </div>
                            <div class="hotArtistImgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/art/Shakira.jpg" alt="">
                                <span>Shakira</span>
                            </div>
                            <div class="hotArtistImgPos">
                                <img src="${pageContext.request.contextPath}/resources/images/art/Beyonce.jpg" alt="">
                                <span>Beyonce</span>
                            </div>
                        </div>
                        <!-- </div> -->

                    </div>
                </div>
            </div>
            <!-- Всплывающее окно (Ввод данных пользователя) -->
            <div id="blackpanel">
                <c:url value="/service/loginProcessing" var="loginUrl"/>
                <form:form id="winLogIn" method="post" action="${loginUrl}" modelAttribute="user">
                    <div class="close"></div>
                    <div class="forms">
                        <legend>Авторизация</legend>
                        <span class="legendSpan">Введите ваши регистрационные данные для входа в ваш личный кабинет</span>
                        <div class="form-group">
                            <label for="">Введите email</label>
                            <form:input path="email" type="email" />
                            <%--<input type="text" class="form-control" id="" name="user_email" placeholder="">--%>
                        </div>
                        <div class="form-group">
                            <label for="">Введите пароль</label>
                            <form:input path="pwd" type="password"/>
                            <%--<input type="text" class="form-control" id="" name="user_password" placeholder="">--%>
                        </div>
                        <c:if test="${not empty error}">
                            <p>${error}</p>
                        </c:if>
                    </div>
                    <div class="buttons">
                        <span id="regButton">Регистрация</span>
                        <button type="submit" class="btn btn-primary">Войти</button>
                    </div>
                </form:form>

                <form:form id="winRegistration" method="post" modelAttribute="user">
                    <div class="close"></div>
                    <div class="forms">
                        <legend>Регистрация</legend>
                        <div class="form-group">
                            <label for="">Введите email</label>
                            <form:input path="email" type="email" />
                            <%--<input type="text" class="form-control" id="" name="user_email" placeholder="">--%>
                        </div>
                        <div class="form-group">
                            <label for="">Введите пароль</label>
                            <form:input path="pwd" type="password"/>
                            <%--<input type="text" class="form-control" id="" name="user_password" placeholder="">--%>
                        </div>

                        <div class="form-group">
                            <label for="">Введите пароль еще раз</label>
                            <input type="text" class="form-control" id="" name="user_confpassword" placeholder="">
                        </div>
                    </div>
                    <div class="buttons">
                        <button type="submit" class="btn btn-primary">Зарегестрироваться</button>
                    </div>
                </form:form>
            </div>
        </main>

        <footer>
            <!-- <?php include 'footer.php';?> -->
        </footer>
    </div>
    <!-- Bootstrap core JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>


</html>
