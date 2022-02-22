<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <tiles:insertAttribute name="asset"></tiles:insertAttribute>
    <link rel="stylesheet" href="/resources/css/newsletter/styles.css">
    <link rel="stylesheet" href="/resources/css/newsletter/screen/write.css">

    <title>Pitchfork Newsletter</title>


    <Style>

        /* 진심으로 이 친구 왜 css 파일에서 안 먹는지 모르겠음 */

        .album-info img {
            width: 200px;
            height: 200px;
            background-color: mistyrose;
            margin-right: 20px;
        }

        .album-list img {
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }

    </Style>
</head>

<body>
<header class="write-header">
    <div class="black-bar"></div>
    <div class="title vertical">
        <h1>Write</h1>
        <span>NewsLetter</span>
    </div>
</header>

<main class="write-page">

    <!-- 글쓰기 폼 -->
    <div class="write-box posting-box">
        <!-- Write form  -->
        <div class="write-container">
            <div class="black-bar__sm"></div>
            <form class="write-form">
                <div class="post-date">2022-02-18</div>
                <div class="album-info">
                    <img src="${dto.image_link}" alt="ablum-img">
                    <div class="album-basic">
                        <div class="title">
                            <div class="release-date">${dto.release_date}</div>
                            <div class="artist">${dto.artist}</div>
                            <div class="album-name">${dto.album_name}</div>
                        </div>
                        <div class="sub-info">
                            <div class="genre">Genre<span>/</span>${dto.genre}</div>
                            <div class="review-date">Reviewed<span>/</span>${dto.review_date}</div>
                            <div class="reviewer">by ${dto.reviewer}</div>
                            <div class="rate">Rate<span>/</span>${dto.rate}</div>
                        </div>
                    </div>
                </div>
                <div class="my-review-box">
                    <textarea class="my-reviw" name="" id="" placeholder="내용을 적어주세요!" onkeydown="resize(this)" onkeyup="resize(this)"
                              autofocus></textarea>
                </div>
                <div class="review-box">
<%--                    <div class="comment">"어쩌구 저쩌구 한줄평 슈게이징 명반이라는 말"</div>--%>
                    <div class="review">
<%--                        <p>--%>
<%--                            대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범--%>
<%--                            쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용--%>
<%--                            ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범--%>
<%--                            쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용--%>
<%--                            ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~--%>
<%--                        </p>--%>
<%--                        <p>--%>
<%--                            대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범--%>
<%--                            쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용--%>
<%--                            ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범--%>
<%--                            쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용--%>
<%--                            ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~--%>
<%--                        </p>--%>

                    </div>
                </div>
            </form>
        </div>

        <!-- BTN -->
        <div class="btn-box">
            <input type="button" value="돌아가기" class="btn back-btn" onclick="location.href='/newsletter/list';">
            <input type="submit" value="저장하기" class="btn write-btn">
        </div>
    </div>


    <!-- Pitchfork 폼 -->
    <div class="write-box pitchfork-box">
        <!-- Write form  -->
        <div class="write-container">
            <div class="black-bar__sm"></div>
            <form class="write-form">
                <div class="post-date">2022-02-18</div>
                <div class="album-info">
                    <img src="${dto.image_link}" alt="ablum-img">
                    <div class="album-basic">
                        <div class="title">
                            <div class="release-date">${dto.release_date}</div>
                            <div class="artist">${dto.artist}</div>
                            <div class="album-name">${dto.album_name}</div>
                        </div>
                        <div class="sub-info">
                            <div class="gerne">Gerne<span>/</span>${dto.genre}</div>
                            <div class="review-date">Reviewed<span>/</span>${dto.review_date}</div>
                            <div class="reviewer">by ${dto.reviewer}</div>
                            <div class="rate">Rate<span>/</span>${dto.rate}</div>
                        </div>
                    </div>
                </div>

                <div class="review-box">
                    <div class="comment">
                        "${dto.summary}"
                    </div>
                    <div class="review">
                        <p>
                            ${dto.review}
                        </p>
                    </div>
                </div>

            </form>
        </div>

        <!-- BTN -->
        <div class="btn-box">
            <input type="submit" value="번역하기" class="btn trans-btn">
        </div>
    </div>

</main>


<!-- Album review list box -->
<div class="album-box">
    <div class="album-container">
        <div class="black-bar__sm"></div>
        <div class="album-lists">

            <!-- 음반 목록 -->
            <c:forEach items="${list}" var="dto">
            <div class="album-list" id="${dto.seq_pitchfork}">
                <img src="${dto.image_link}" alt="album-img">
                <div class="album-basic">
                    <div class="artist">${dto.artist}</div>
                    <div class="album-name">${dto.album_name}</div>
                </div>
            </div>
            </c:forEach>


        </div>
    </div>
</div>


<script>
    function resize(obj) {
        obj.style.height = '1px';
        obj.style.height = (24 + obj.scrollHeight) + 'px';
    }

    $('.album-list').click(function() {

        let seq = $(this).context.id;
        let url = 'http://localhost:8090/newsletter/write/' + seq;

        $.ajax({

            // request
            type : 'GET',
            url: url,

            // response
            dataType: 'json',

            success:function (dto){

                /* Album Info */
                $('.write-container img').attr('src', dto.image_link);
                $('.write-container .release-date').text(dto.release_date);
                $('.write-container .artist').text(dto.artist);
                $('.write-container .album-name').text(dto.album_name);

                $('.write-container .genre').html('Genre<span>/</span>' + dto.genre);
                $('.write-container .review-date').html('Reviewed<span>/</span>' + dto.review_date);
                $('.write-container .reviewer').html('by ' + dto.reviewer);
                $('.write-container .rate').html('Rate<span>/</span>' + dto.rate);

                /* Review box */
                $('.pitchfork-box .comment').text('"' + dto.summary + '"');
                $('.pitchfork-box .review p').text(dto.review);

                /* Reset textarea */
                $('.posting-box textarea').val('');

            },

            error: function(a, b, c) { console.log(a, b, c)}

        });


    });



</script>


</body>
</html>
