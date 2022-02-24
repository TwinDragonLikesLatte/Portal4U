<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<main class="list-page">
    <div class="subtitle-box">
        <h2>NewsLetter Lists</h2>
        <div>
            <input type="text" name="search" placeholder="Search">
        </div>
    </div>

    <!-- Review Post -->
    <c:forEach items="${list}" var="dto" varStatus="status">
    <div class="newsLetter-box ${dto.seq_newsletter}">
        <img src="${dto.image_link}" alt="ablum-img">
        <div class="post-info">
            <div>
                <div class="post-date">${dto.write_date}</div>
                <div class="post-subject">
                    <span>#<c:out value="${fn:length(list) - status.index}"></c:out></span>
                    <span>${dto.artist}</span>
                    <span>${dto.album_name}</span>
                </div>
                <div class="post-descript">
                    ${dto.my_review}
                </div>
            </div>
            <div>
                <button class="publish-btn">발송하기</button>
            </div>
        </div>
    </div>
    </c:forEach>

</main>


<!-- Write BTN -->
<div class="write-btn">
    <a href="/newsletter/write">
        <div class="glyphicon glyphicon-pencil"></div>
    </a>
</div>


<!-- NewsLetter Modal -->
<c:forEach items="${list}" var="dto">
<div class="modal hidden">
    <div class="modal__overlay"></div>
    <div class="newsLetter-viewer">
        <div class="newsLetter-content">

            <!-- 글쓰기 폼 -->
            <div class="write-box posting-box">
                <div class="close-btn">X</div>
                <div class="write-container">
                    <div class="black-bar__sm"></div>
                    <form class="write-form">

                        <!-- BTN-BOX -->
                        <div class="btn-box">
                            <span class="glyphicon glyphicon-edit"></span>
                            <span class="glyphicon glyphicon-trash"></span>
                        </div>

                        <div class="post-date">${dto.write_date}</div>
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

                        <div class="origin-btn-box">
                            <a href="${dto.origin_link}" target="_blank">
                                <div class="origin-btn">원본보기</div>
                            </a>
                        </div>

                        <div class="my-review">
                            <p>${dto.my_review}</p>
                        </div>
                        <div class="review-box">
                            <div class="comment">${dto.trans_comment}</div>
                            <div class="review">
                                <p>
                                    ${dto.trans_review}
                                </p>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</c:forEach>

<script>



    const newsLetterBox = document.querySelectorAll(".newsLetter-box");
    const modal = document.querySelector(".modal");
    const closeBtn = modal.querySelector(".close-btn");
    const body = document.body;

    const openModal = (evt) => {
        modal.classList.remove("hidden");
        body.classList.add("prevent-scroll");
    }

    const closeModal = () => {
        modal.classList.add("hidden");
        body.classList.remove("prevent-scroll");
    }

    newsLetterBox.forEach(item => {
        item.addEventListener("click", openModal);
    });

    closeBtn.addEventListener("click", closeModal);
</script>