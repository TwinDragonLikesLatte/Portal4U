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
                    <textarea class="my-review" name="my-review" id="my-review" placeholder="내용을 적어주세요!" onkeydown="resize(this)" onkeyup="resize(this)"
                              autofocus></textarea>
                </div>
                <div class="review-box">
                    <div class="comment"></div>
                    <div class="review">
                        <p></p>
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
                            <div class="genre">Genre<span>/</span>${dto.genre}</div>
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

    /* Textarea 자동 height 조절 */
    function resize(obj) {
        obj.style.height = '1px';
        obj.style.height = (24 + obj.scrollHeight) + 'px';
    }

    /* 포스팅 날짜 수정 */
    const postDate = new Date().getFullYear() + "-" + (new String(new Date().getMonth() + 1)).padStart(2,"0") + "-" + (new String(new Date().getDate())).padStart(2, "0");
    $('.post-date').text(postDate);


    /* 앨범 선택 Ajax */
    let seq = ${dto.seq_pitchfork};
    $('.album-list').click(function() {

        seq = $(this).context.id;
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
                $('.posting-box .comment').text('');
                $('.posting-box .review p').text('');
            },
            error: function(a, b, c) { console.log(a, b, c);}
        });

    });


    /* 번역 */
    let summary;
    let review;
    $('.trans-btn').click(function(){

        let url = 'http://localhost:8090/newsletter/write/trans/' + seq;

        $.ajax({

            // request
            type : 'GET',
            url: url,

            // response
            dataType: 'json',
            contentType: 'application/json;charset=UTF-8',

            success:function(map){

                /* 번역 parsing */

                // Summary
                summary = JSON.parse(map.summary);
                summary = summary.message.result.translatedText;

                // Review
                review = JSON.parse(map.review);
                review = review.message.result.translatedText;

                /* Review box */
                $('.posting-box .comment').text('"' + summary + '"');
                $('.posting-box .review p').text(review);
            },
            error: function(a, b, c) { console.log(a, b, c);}
        });
    });


    /* 저장 */
    $('.write-btn').click(function(){

        const myReview = $('textarea').val();
        summary = $('.posting-box .comment').text();
        review = $('.posting-box .review p').text();

        const data = {
            seq_pitchfork : seq,
            write_date : postDate,
            my_review : myReview,
            trans_comment : summary,
            trans_review : review
        };

        $.ajax({
            // request
            type : 'POST',
            url: 'http://localhost:8090/newsletter/write',
            contentType: 'application/json;charset=UTF-8',
            data : JSON.stringify(data),
            dataType: 'json',

            success:function(result){
                if(result == 1)
                    location.href='/newsletter/list';
                else{
                    alert('글쓰기 실패');
                }
            },
            error: function(a, b, c) { console.log(a, b, c);}
        });
    });



</script>


</body>
</html>
