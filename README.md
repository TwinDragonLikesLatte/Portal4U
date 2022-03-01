
# 💌 Portal4U

![001_포털메인](https://user-images.githubusercontent.com/42857790/156120427-772eaf17-2d0c-4fca-88b7-ef80ab423a09.png)

### 💌 Spring Web Project, Portal4U
- Spring Web 프로젝트 **Portal4U**입니다.
- 각자 관심 있는 주제로 사이트를 만들고, 하나의 포털로 통합하였습니다.
<br/>


### ✨ Service List 
- 그룹 채팅 서비스 [@Dev-Jinuk-Jo](https://github.com/Dev-Jinuk-Jo)
- NFT 경매 사이트 [@donato14](https://github.com/donato14)
- 전통주 구독 사이트 [@helloppiok](https://github.com/helloppiok)
- 음악 뉴스레터 사이트 [@sunday-sunny](https://github.com/sunday-sunny)

<br/>
<br/>

  
  # Table of contents
* [Intro](#intro)
* [Dev Enviroment](#dev-enviroment)
* [Dependency](#dependency)
* [ERD](#erd)
* [Features](#features)
<br/>
<br/>
<br/>



# Intro
### 개발 배경
```
지난 프로젝트를 끝낸지 하루.
또 다시 새로운 프로젝트를 시작해야되는데 모든 아이디어를 고갈해버린 조장 @dev-jinuk-jo😔

개개인별로 밀도 높은 페이지와 게시판을 하나씩 넣어 완성도 높은 페이지를 만들어야 하는데 어떡하면 좋을까?
그리하여 시작된 각자 만들고 싶은 걸 만들고 통합하는 포털 사이트 기획.

이것은 개인 프로젝트인가 팀 프로젝트인가 오리무중한 Portal4U Start 💌!
```
<br/>
<br/>



### 개발 기간
-  2022-02-03 ~ 2022-02-25 (하루 4시간씩, 23일)
<br/>

<img width="800" alt="일정표" src="https://lh6.googleusercontent.com/r8SwsZv_WUESZsWXdrRgAbBCSaeACXTlfA0jJJECDmU-LmRD96ceF5UEhl_Ket31-I7fdGo66dG2e9xu7MEGkUb4dG48MUNYeTtuYUUXHQy_8F-VB_aivp6Nh2g0_E3Mnw">
<br/>
<br/>
<br/>



# Dev Enviroment
**🌍 OS** / MAC OS, Windows10 <br/>
**💻 IDE** / Eclipse, IntelliJ, VSCode <br/>
**🛢 DB** / Oracle Database 11g Express Edition Release 11.2.0.2.0 <br/>
**🚀 DBMS** / SQL Developer, DataGrip <br/>
**💽 ERD** / ERD Cloud <br/>
**🎨 Story Board** / Figma <br/>
**📝문서 작성** / Notion, 구글 드라이브 <br/>
**👾온라인 회의** / Discode <br/>
**👩🏻‍💻Version Control** / GitHub <br/>
<br/>
<br/>
<br/>




# Dependency
- ojdbc6
- spring-jdbc
- AOP
- MyBatis
- Socket
- spring-context-support
- lombok
- Servlet
- File Upload
- Tiles
- log4j

<br/>
<br/>
<br/>


# ERD
### 전체ERD
![4조 포탈](https://user-images.githubusercontent.com/42857790/156117014-1140e9ef-e337-4e13-9398-1a87614e4c57.png)

<br/>

### 개별 ERD
<details>
<summary>그룹 채팅 ERD </summary>
<div markdown="1">

![image](https://user-images.githubusercontent.com/42857790/156117924-1f82ecb4-c599-4267-ad4b-edae5e3d240f.png)
- 회원
- 그룹
- 모임가입
- 채널
- 채팅

</div>
<br/>  
</details>

<details>
<summary>NFT 경매 사이트 ERD</summary>
<div markdown="1">

![image](https://user-images.githubusercontent.com/42857790/156118480-4e1aa81b-91a5-40d4-addd-072c463ac385.png)

- 게시판
- 경매종료
- 경매물품
- 경매상황
- 회원
- 경매 시작가

</div>
<br/>  
</details>

<details>
<summary>전통주 구독 사이트 ERD</summary>
<div markdown="1">

![image](https://user-images.githubusercontent.com/42857790/156118248-ad013f66-0d41-4f67-905e-df4ee2eb5e66.png)

- 회원
- 전통주
- 주종
- 맛
- 전통주 설명
- 전통주 설명

</div>
<br/>  
</details>

<details>
<summary>음악 뉴스레터 ERD</summary>
<div markdown="1">

![image](https://user-images.githubusercontent.com/42857790/156118948-a30a041d-b394-4777-9a5c-44be57ad67e5.png)

- 구독자
- 장르
- 구독자 선호장르
- 피치포크리뷰
- 뉴스레터
- 뉴스레터 정보
- 발송정보

</div>
<br/>  
</details>


<br/>
<br/>
<br/>


# Features
### 💬 그룹 채팅
<details>
<summary>그룹 채팅 기능보기</summary>
<div markdown="1">

![005_메세지 알람](https://user-images.githubusercontent.com/42857790/156121822-852063f1-c0f9-4c64-88c2-56b399f63d9d.png)

**그룹 채팅**
- **WebSocket STOMP**을 사용하여 **그룹, 채널별 채팅**을 지원합니다.
- **AJAX**를 사용하여 **SPA**(Single Page Application) 페이지로 구성하였습니다.
- 그룹, 채널 추가 및 이동을 지원합니다.
- 동적으로 그룹, 채널, 이용자 리스트 표시합니다.
- 속해있는 그룹의 다른 채널에 메시지가 온 경우 동적으로 알림 표시를 띄웁니다.

</div>
<br/>  
<br/> 
</details>


### 📸 NFT 경매 사이트
<details>
<summary>NFT 경매 사이트 기능보기</summary>
<div markdown="1">

<img width="2032" alt="메인화면" src="https://user-images.githubusercontent.com/42857790/156123137-a6b74924-0798-4936-97fc-4cfa0c4ca949.png">

**NFT 경매 사이트 메인 화면**
- 상단에 배너가 위치하여 이미지를 고객에게 제공합니다. 
- 경매 물품은 매일 변경되며 경매 상품당 1시간의 타이머가 존재합니다.
- 고객이 현재 입찰가보다 높게 입찰시 현재 입찰가 변경과 동시에 타이머가 초기화 됩니다.
- 1시간이 흐를때까지 입찰의 변동이 없다면 경매가 종료됩니다.
<br/>


<img width="2032" alt="게시판 모달창" src="https://user-images.githubusercontent.com/42857790/156123650-02365d10-8e03-44ab-a70d-59d94bad30e3.png">

**FAQ 게시판**
- 자주하는 질문 게시판을 통해 관리자가 공지사항으로 올려 놓은 정보를 확인 가능합니다.
- 게시물은 모달 형식으로 제공됩니다.
- ESC를 누를 경우 모달창을 닫을 수 있습니다.
<br/>


<img width="2032" alt="관리자- 상품등록" src="https://user-images.githubusercontent.com/42857790/156123882-de3a1b18-b919-4f33-bc18-50d7852eae2f.png">

**경매물품 등록(관리자)**
- 관리자 화면에서 경매 물품을 등록할 수 있습니다. 
- 사진 파일 등록 시 미리보기가 가능하고, 각각의 데이터 입력 후 등록버튼으로 경매물품을 등록합니다.
- 경매물품 등록과 동시에 메인화면의 경매 물품이 변경됩니다.
<br/>

<img width="2032" alt="게시판- 리스트" src="https://user-images.githubusercontent.com/42857790/156124702-74661fea-14f8-4bdc-8e41-2922e76a7cd1.png">
<img width="2032" alt="게시판- 게시글화면" src="https://user-images.githubusercontent.com/42857790/156124695-394e55e3-db7c-4729-bbd7-d51e03d40f01.png">


**QnA 게시판**
- 고객이 익명으로 글을 작성할 수 있는 게시판입니다.
- 글쓰기 기능과 확인 기능을 제공합니다.
<br/>

</div>
<br/>  
<br/> 
</details>


### 🍶 전통주 구독
<details>
<summary>전통주 구독 사이트 기능보기</summary>
<div markdown="1">

![001_전통주 팝업](https://user-images.githubusercontent.com/42857790/156125297-c24ac44e-0b40-41b1-b5f2-6672129fae18.png)

**전통주 구독 사이트 메인(팝업)**
- 사이트 접속시 경고 팝업 확인 가능합니다.
- 팝업에 **드래그 기능**을 넣어 드래그가 가능합니다.
- **쿠키**를 적용하여 '**오늘 하루 열지 않음**' 버튼 클릭시 팝업창이 다시 뜨지 않습니다.
<br/>


![002_전통주 메인](https://user-images.githubusercontent.com/42857790/156125359-19eef9d1-6aa9-4736-b5e7-2c29a49554ad.png)
![005_전통주 목록 트랜지션](https://user-images.githubusercontent.com/42857790/156125363-516d09c8-e06d-4129-9146-52d49fe5cdd2.png)

**전통주 구독 사이트 메인**
- **전통주 구독하기** 및 **전통주 정보 확인**이 가능합니다.
- 전통주 이미지에 **트랜지션**을 적용하여 **사용자 인터랙티브 요소를 강화**하였습니다.
<br/>


![006_음식 레시피](https://user-images.githubusercontent.com/42857790/156126317-0f25ce42-249b-4e0e-88d7-ec5fd0507aaa.png)
![007_음식 레시피 상세](https://user-images.githubusercontent.com/42857790/156126311-90885e05-9cdd-425f-8454-eb18dbfe6b3c.png)

**레시피 게시판 및 글작성**
- 레시피 게시판입니다. 
- **앨범 형식**으로 게시판UI를 제공합니다. 
- 글보기 및 글작성 CRUD가 가능합니다.
<br/>



</div>
<br/>  
<br/> 
</details>


### 💌 음악 뉴스레터
<details>
<summary>음악 뉴스레터 기능보기</summary>
<div markdown="1">
<br/>

![subscribe](https://user-images.githubusercontent.com/42857790/156130252-00468489-be9b-4fb6-9311-a81059096a8b.gif)

**뉴스레터 구독**
- 뉴스레터 구독 화면입니다.
- **이메일, 이름, 좋아하는 장르를 선택** 후 구독하기 버튼을 누를 경우 구독이 완료됩니다.
<br/>

![003_뉴스레터 목록](https://user-images.githubusercontent.com/42857790/156130797-d8175886-741a-43c3-8bd0-2388a31979a9.png)

**뉴스레터 목록**
- 작성된 뉴스레터를 확인할 수 있는 뉴스레터 게시판입니다.
- **박스 형식**으로 게시물 리스트UI를 제공합니다.
- 하단 글작성 버튼으로 글작성 페이지로 이동할 수 있습니다.
<br/>


![004_뉴스레터 상세](https://user-images.githubusercontent.com/42857790/156130804-3a9d1b12-cdbc-4a2c-8f80-5af10da07124.png)

**뉴스레터 상세보기**
- 게시물 클릭시 **모달 형태**로 게시물 확인 가능합니다.
- '**원본보기**' 버튼을 통해 Pitchfork 원본 게시물로 이동하도록 하였습니다.
- 글 삭제 기능을 제공합니다.
<br/>


![write](https://user-images.githubusercontent.com/42857790/156130257-9e9b942c-da31-417b-9d06-97ddc91caefd.gif)

**뉴스레터 글작성**
- **뉴스레터 번역**과 **글작성**이 가능합니다. 
- **AJAX**를 이용하여 앨범 박스에서 앨범 선택시 **자동으로 내용이 변경**되게 하였습니다.
- 번역하기 버튼을 누르면 **네이버 파파고 API**를 사용해 원문을 번역하였습니다.
- 게시물 저장 시 사용자 리뷰 내용과 번역 내용을 모두 저장합니다.
<br/>




![007_뉴스레터 구독자 관리](https://user-images.githubusercontent.com/42857790/156130808-40c1cc1f-abc5-4363-b196-624905603c35.png)

**구독자 관리**
- 구독 신청을 한 구독자 목록을 보여줍니다.
- 구독일자, 이름, 이메일, 구독상태, 발송제외 컬럼을 보여줍니다.
- 삭제 버튼을 통해 구독자 삭제가 가능합니다.
<br/>



![008_뉴스레터 통계1](https://user-images.githubusercontent.com/42857790/156130812-ad808aca-1c38-4a16-bcce-69f7829fc205.png)

**뉴스레터 통계**
- **뉴스레터 기본정보, 이메일 통계, 뉴스레터 통계**를 보여줍니다.
- 이메일 통계의 경우 **발송 성공률, 평균 오픈율, 수신 거부율** 확인이 가능합니다.
- 뉴스레터 통계의 경우 **'많이 오픈한 뉴스레터TOP5', '많이 오픈한 구독자TOP5'** 확인이 가능합니다. 
<br/>


</div>
<br/>  
<br/> 
</details>
