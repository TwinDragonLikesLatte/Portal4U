<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<main>
    <div class="subtitle-box">
        <h2>Member Lists</h2>
    </div>

    <!-- Member-filter box -->
    <form action="" class="form-control member-filter">
        <div class="member-filter__condition">
            <span>전체보기</span>
            <label for="all">
                <input type="radio" name="" id="all" checked> 전체 보기
            </label>
        </div>

        <div class="member-filter__condition">
            <span>구독상태</span>
            <label for="subIng">
                <input type="checkbox" name="" id="subIng"> 구독중
            </label>
            <label for="subDeny">
                <input type="checkbox" name="" id="subDeny"> 수신거부
            </label>
        </div class="member-filter__condition">

        <div class="member-filter__condition">
            <div>
                <span>검색키워드</span>
                <input type="text" name="search" class="form-control member-filter-search" autocomplete="off">
            </div>

            <div class="member-filter__btn">
                <input type="submit" value="검색하기" class="btn">
            </div>
        </div>
    </form>

    <!-- Member lists table -->
    <form class="member-table-form">
        <table class="table table-bordered member-table">
            <thead>
            <tr>
                <th>번호</th>
                <th>구독일자</th>
                <th>이름</th>
                <th>이메일</th>
                <th>구독상태</th>
                <th>발송제외</th>
                <th>삭제</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>2022-02-17</td>
                <td>최선희</td>
                <td>22mallox@gmail.com</td>
                <td>구독중</td>
                <td>
                    <input type="checkbox" name="" id="">
                </td>
                <td>
                    삭제버튼
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>2022-02-17</td>
                <td>최선희</td>
                <td>22mallox@gmail.com</td>
                <td>수신거부</td>
                <td>
                    <input type="checkbox" name="" id="">
                </td>
                <td>
                    삭제버튼
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>2022-02-17</td>
                <td>최선희</td>
                <td>22mallox@gmail.com</td>
                <td>수신거부</td>
                <td>
                    <input type="checkbox" name="" id="">
                </td>
                <td>
                    삭제버튼
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>2022-02-17</td>
                <td>최선희</td>
                <td>22mallox@gmail.com</td>
                <td>수신거부</td>
                <td>
                    <input type="checkbox" name="" id="">
                </td>
                <td>
                    삭제버튼
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>2022-02-17</td>
                <td>최선희</td>
                <td>22mallox@gmail.com</td>
                <td>수신거부</td>
                <td>
                    <input type="checkbox" name="" id="">
                </td>
                <td>
                    삭제버튼
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>2022-02-17</td>
                <td>최선희</td>
                <td>22mallox@gmail.com</td>
                <td>수신거부</td>
                <td>
                    <input type="checkbox" name="" id="">
                </td>
                <td>
                    삭제버튼
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>2022-02-17</td>
                <td>최선희</td>
                <td>22mallox@gmail.com</td>
                <td>수신거부</td>
                <td>
                    <input type="checkbox" name="" id="">
                </td>
                <td>
                    삭제버튼
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>2022-02-17</td>
                <td>최선희</td>
                <td>22mallox@gmail.com</td>
                <td>수신거부</td>
                <td>
                    <input type="checkbox" name="" id="">
                </td>
                <td>
                    삭제버튼
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>2022-02-17</td>
                <td>최선희</td>
                <td>22mallox@gmail.com</td>
                <td>수신거부</td>
                <td>
                    <input type="checkbox" name="" id="">
                </td>
                <td>
                    삭제버튼
                </td>
            </tr>

            </tbody>
        </table>

        <div class="member-table__footer">
            <div class="page-bar">
                <span class="next"><</span>
                <span class="page-num">1</span>
                <span class="page-num">2</span>
                <span class="page-num">3</span>
                <span class="page-num">4</span>
                <span class="page-num">5</span>
                <span class="page-num">6</span>
                <span class="page-num">7</span>
                <span class="page-num">8</span>
                <span class="page-num">9</span>
                <span class="next">></span>
            </div>

            <div class="member-table__btn">
                <input type="submit" value="저장하기" class="btn">
            </div>
        </div>
    </form>

</main>