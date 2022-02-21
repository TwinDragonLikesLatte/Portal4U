<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="sign-up">
  <div class="black-bar__lg"></div>
  <div class="content">
    <div class="title horizontal">
      <h1>Pitchfork</h1>
      <span>NewsLetter</span>
    </div>

    <div class="discription">
      <p>
        미국의 음악 비평, 소식, 인터뷰 관련 인디 록 웹 사이트 Pitchfork의 앨범 리뷰 번역 뉴스레터입니다.
      </p>

      <p>
        새로운 음악 디깅을 위해 종종 Pitchfork를 방문해 앨범 리뷰를 읽는데요.<br/>
        부족한 영어 실력으로 인해 리뷰를 읽는데 어려움을 겪곤 합니다.
      </p>

      <p>
        평점만 보고 음악을 듣는 아쉬움에서 벗어나,<br/>
        더 풍성한 음악 감상을 위해 피치포크의 앨범 리뷰를 번역하여 발송하는 뉴스레터를 기획하게 되었습니다.<br/>
        덤으로 저의 앨범평도 같이 읽으시며 음악에 대한 생각을 같이 공유했으면 합니다.
      </p>

      <p>
        지금까지 뉴스레터 보러가기!<br/>
        <a href="/list.html">Pitchfork NewsLetter</a>
      </p>

    </div>

    <div class="subscription-box">
      <form method="POST" action="/subscriptok.html">
        <div>
          <span>이메일 주소를 입력해주세요.<span class="star"> *</span></span>
          <input type="text" name="email" required autocomplete="off"/>
        </div>
        <div>
          <span>구독자님의 이름 또는 닉네임을 알려주세요!<span class="star"> *</span></span>
          <input type="text" name="name" required autocomplete="off"/>
        </div>
        <div>
          <span>좋아하는 장르를 알려주세요!</span>
          <div class="genre-box">
            <label for="Electronic" class="checkbox-container">
              <input type="checkbox" name="genre" value="Electronic" id="Electronic"> Electronic
              <span class="checkmark"></span>
            </label>
            <label for="Folk/Country" class="checkbox-container">
              <input type="checkbox" name="genre" value="Folk/Country" id="Folk/Country"> Folk/Country
              <span class="checkmark"></span>
            </label>
            <label for="Jazz" class="checkbox-container">
              <input type="checkbox" name="genre" value="Jazz" id="Jazz"> Jazz
              <span class="checkmark"></span>
            </label>
            <label for="Pop/R&B" class="checkbox-container">
              <input type="checkbox" name="genre" value="Pop/R&Bc" id="Pop/R&B"> Pop/R&B
              <span class="checkmark"></span>
            </label>
            <label for="Rock" class="checkbox-container">
              <input type="checkbox" name="genre" value="Rock" id="Rock"> Rock
              <span class="checkmark"></span>
            </label>
            <label for="Experimental" class="checkbox-container">
              <input type="checkbox" name="genre" value="Experimental" id="Experimental"> Experimental
              <span class="checkmark"></span>
            </label>
            <label for="Global" class="checkbox-container">
              <input type="checkbox" name="genre" value="Global" id="Global"> Global
              <span class="checkmark"></span>
            </label>
            <label for="Metal" class="checkbox-container">
              <input type="checkbox" name="genre" value="Metal" id="Metal"> Metal
              <span class="checkmark"></span>
            </label>
            <label for="Rap/Hip-Hop" class="checkbox-container">
              <input type="checkbox" name="genre" value="Rap/Hip-Hop" id="Rap/Hip-Hop"> Rap/Hip-Hop
              <span class="checkmark"></span>
            </label>
          </div>
        </div>

        <div class="agree-box">
          <label for="req1" class="checkbox-container">
            <input type="checkbox" name="req1" id="req1" required> (필수) <span
                  class="highlight">개인정보 수집 및 이용</span>에 동의합니다.
            <span class="checkmark"></span>
          </label>
          <label for="req2" class="checkbox-container">
            <input type="checkbox" name="req2" id="req2" required"> (필수) <span
                  class="highlight">광고성 정보 수신</span>에 동의합니다.
            <span class="checkmark"></span>
          </label>
        </div>
        <input type="submit" value="구독하기">

      </form>
    </div>


  </div>

</main>
