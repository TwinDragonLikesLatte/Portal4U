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
                    <div class="img"></div>
                    <div class="album-basic">
                        <div class="title">
                            <div class="release-date">1991</div>
                            <div class="artist">My Bloody Valentine</div>
                            <div class="album-name">Lovess</div>
                        </div>
                        <div class="sub-info">
                            <div class="gerne">Gerne<span>/</span>Rock</div>
                            <div class="review-date">Reviewed<span>/</span>september 2, 2021</div>
                            <div class="reviewer">by Ian Cohen</div>
                            <div class="rate">Rate<span>/</span>10.0</div>
                        </div>
                    </div>
                </div>
                <div class="my-review">
                    <textarea name="" id="" placeholder="내용을 적어주세요!" onkeydown="resize(this)" onkeyup="resize(this)"
                              autofocus></textarea>
                </div>
                <div class="review-box">
                    <div class="comment">"어쩌구 저쩌구 한줄평 슈게이징 명반이라는 말"</div>
                    <div class="review">
                        <p>
                            대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범
                            쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용
                            ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범
                            쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용
                            ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~
                        </p>
                        <p>
                            대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범
                            쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용
                            ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범
                            쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용
                            ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~
                        </p>

                    </div>
                </div>
            </form>
        </div>

        <!-- BTN -->
        <div class="btn-box">
            <input type="submit" value="돌아가기" class="btn back-btn">
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
                    <div class="img"></div>
                    <div class="album-basic">
                        <div class="title">
                            <div class="release-date">1991</div>
                            <div class="artist">My Bloody Valentine</div>
                            <div class="album-name">Lovess</div>
                        </div>
                        <div class="sub-info">
                            <div class="gerne">Gerne<span>/</span>Rock</div>
                            <div class="review-date">Reviewed<span>/</span>september 2, 2021</div>
                            <div class="reviewer">by Ian Cohen</div>
                            <div class="rate">Rate<span>/</span>10.0</div>
                        </div>
                    </div>
                </div>
                <div class="review-box">
                    <div class="comment">
                        "Since its release, Loveless has been widely cited by critics as one of the greatest albums
                        of all time"
                    </div>
                    <div class="review">
                        <p>
                            At the time when I made Lo veless I was extremely focused. I knew what I wanted achieve
                            because the feel of it was in my imagination. Not the reality of it, exactly—I knew what
                            parts needed to be, but I didn’t know exactly what they were and how they sounded until
                            I did them. But they were there. The whole balance of it was something I was extremely
                            conscious of. I was very, very, very deep in my own world. It just had to be a certain
                            way. It wasn’t about trying to make it sound correct compared to other records. I know
                            why I did everything. It couldn’t be done differently. Without getting pretentious, it’s
                            a bit like I made a painting and I just got it right. I achieved what I was trying to
                            achieve at the time.
                        </p>

                        <p>
                            We started recording it a year ago, and then we just kept on stopping because of this
                            [project]. So the last time we worked on it was a month or two months ago. I’m still
                            hovering over this project until it’s basically in manufacturing, then it’s back into
                            the album. Finishing it. Because we’re trying to do gigs starting in the
                        </p>
                        <p>
                            We started recording it a year ago, and then we just kept on stopping because of this
                            [project]. So the last time we worked on it was a month or two months ago. I’m still
                            hovering over this project until it’s basically in manufacturing, then it’s back into
                            the album. Finishing it. Because we’re trying to do gigs starting in the
                        </p>
                        <p>
                            We started recording it a year ago, and then we just kept on stopping because of this
                            [project]. So the last time we worked on it was a month or two months ago. I’m still
                            hovering over this project until it’s basically in manufacturing, then it’s back into
                            the album. Finishing it. Because we’re trying to do gigs starting in the
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
            <div class="album-list">
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
</script>


</body>
</html>
