<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<main class="list-page">
    <div class="subtitle-box">
        <h2>NewsLetter Lists</h2>
        <div>
            <input type="text" name="search" placeholder="Search">
        </div>
    </div>

    <!-- Review Post -->
    <div class="newsLetter-box">
        <div class="img">img-box</div>
        <div class="post-info">
            <div>
                <div class="post-date">2022.02.07</div>
                <div class="post-subject">
                    <span>#3</span>
                    <span>Radiohead</span>
                    <span>kid A Mnesia</span>
                </div>
                <div class="post-descript">
                    생각해보니 한글 번역이 들어가야되구나. 사실 KID A는 잘 안 들어봤어요. 2집 The bends, 3집 OK Computer, 7집 In rainbows 좀 들었습니다.
                </div>
            </div>
            <div>
                <button class="publish-btn">발송하기</button>
            </div>
        </div>
    </div>

    <div class="newsLetter-box">
        <div class="img">img-box</div>
        <div class="post-info">
            <div>
                <div class="post-date">2022.02.07</div>
                <div class="post-subject">
                    <span>#3</span>
                    <span>Radiohead</span>
                    <span>kid A Mnesia</span>
                </div>
                <div class="post-descript">
                    생각해보니 한글 번역이 들어가야되구나. 사실 KID A는 잘 안 들어봤어요. 2집 The bends, 3집 OK Computer, 7집 In rainbows 좀 들었습니다.
                </div>
            </div>
            <div>
                <button class="publish-btn">발송하기</button>
            </div>
        </div>
    </div>

    <div class="newsLetter-box">
        <div class="img">img-box</div>
        <div class="post-info">
            <div>
                <div class="post-date">2022.02.07</div>
                <div class="post-subject">
                    <span>#3</span>
                    <span>Radiohead</span>
                    <span>kid A Mnesia</span>
                </div>
                <div class="post-descript">
                    생각해보니 한글 번역이 들어가야되구나. 사실 KID A는 잘 안 들어봤어요. 2집 The bends, 3집 OK Computer, 7집 In rainbows 좀 들었습니다.
                </div>
            </div>
            <div>
                <button class="publish-btn">발송하기</button>
            </div>
        </div>
    </div>

    <div class="newsLetter-box">
        <div class="img">img-box</div>
        <div class="post-info">
            <div>
                <div class="post-date">2022.02.07</div>
                <div class="post-subject">
                    <span>#3</span>
                    <span>Radiohead</span>
                    <span>kid A Mnesia</span>
                </div>
                <div class="post-descript">
                    생각해보니 한글 번역이 들어가야되구나. 사실 KID A는 잘 안 들어봤어요. 2집 The bends, 3집 OK Computer, 7집 In rainbows 좀 들었습니다.
                </div>
            </div>
            <div>
                <button class="publish-btn">발송하기</button>
            </div>
        </div>
    </div>

</main>


<!-- Write BTN -->
<div class="write-btn">
    <a href="/write.html">
        <div class="glyphicon glyphicon-pencil"></div>
    </a>
</div>


<!-- NewsLetter Modal -->
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

                        <div class="origin-btn-box">
                            <button class="origin-btn">원본보기</button>
                        </div>

                        <div class="my-review">
                                <textarea name="" id="" placeholder="내용을 적어주세요!" onkeydown="resize(this)"
                                          onkeyup="resize(this)" autofocus></textarea>
                        </div>
                        <div class="review-box">
                            <div class="comment">"어쩌구 저쩌구 한줄평 슈게이징 명반이라는 말"</div>
                            <div class="review">
                                <p>
                                    대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범
                                    쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는
                                    내용
                                    ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충
                                    앨범
                                    쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는
                                    내용
                                    ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~
                                </p>
                                <p>
                                    대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범
                                    쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는
                                    내용
                                    ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충
                                    앨범
                                    쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는
                                    내용
                                    ~대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~ 대충 앨범 쩐다라는 내용 ~
                                </p>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    const newsLetterBox = document.querySelectorAll(".newsLetter-box");
    const modal = document.querySelector(".modal");
    const closeBtn = modal.querySelector(".close-btn");
    const body = document.body;

    const openModal = () => {
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