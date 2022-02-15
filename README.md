#  Portal4u
### 💻💌 이것은 팀프로젝트인가 개인 프로젝트인가 당신을 위한 4조 포탈 ! <br/>

- 라떼판다처럼, 개인 작업하실 때 꼭 `issue` 등록 후 진행하시기 바랍니다! 
 <br/>
 <br/>

## 작업방식

 1. 클래스는 알아서 패키지 생성해서 사용 
 2. 컨트롤러도 본인 패키지에 넣어서 사용
 3. tiles 매핑 뷰리졸버 호출할때, 항상 2단이상으로 `return test.main` 이런식으로 
 4. views에도 폴더구조 똑같이 만들면됨 
 5. 본인 디렉토리 만들고 디렉토리와 같은 이름의 `jsp`파일이 레이아웃 파일이됨

<br/>
<br/>


## Branch/Commit onvention 
### Branch 명명규칙
```
feature/login
feature/newletterList
feature/galleryList
```
- 이번 프로젝트는 **기능별로 브랜치를 따서 작업**합니다.
- 기본적으로 `main` 에서 브랜치를 땁니다.
- 브랜치 이름은 `feature/기능` 형식으로 정합니다. 기능 이름은 **파스칼 표기법**으로 표기합니다.
- 작업 후 `main`에 `Pull Request` 요청을 해 merge 합니다.
- merge 된 이후에는 해당 브랜치를 삭제하고, 다시 main에서 새 브랜치를 따서 작업합니다.
<br/>
<br/>


### Pull Request 명명규칙
```
feature/login
feature/newletterList
feature/galleryList
```
- **해당 브랜치 이름과 같은 이름**으로 Pull Request를 요청합니다.
<br/>
<br/>


#### Branch 컨벤션 참고
[Git branch & naming](https://velog.io/@kim-jaemin420/Git-branch-naming)
<br/>
<br/>



### Commit 명명규칙
- 효율적인 협업을 위해 컨벤션을 지켜 commit 해주세요!
- 꼼꼼하게 할수록 본인 파트의 코드 관리뿐만 아니라 타인이 작업한 결과물 파악에도 쉽습니다.
- 하단에 예시를 적어놨습니다. 내용은 한글, 영어 상관없으나 `타입`, `동사` 등의 규칙은 지켜주시기 바랍니다.
- `범위(scope)` 내용은 필수는 아니니 본인 작업 및 재량껏 하시기 바랍니다.
<br/>

```
타입(범위): 동사 내용
```
- 제목의 처음은 동사 원형으로 시작.
- 마지막에 특수문자는 삽입하지 않습니다. 
	- 예) 마침표(.), 느낌표(!), 물음표(?)
<br/>

#### 타입 종류
- Feat: 새로운 기능을 추가할 경우
- Fix: 코드 수정, 버그를 고친 경우
- Refactor: 프로덕션 코드 리팩토링, 새로운 기능이나 버그 수정없이 현재 구현을 개선한 경우
- Design: CSS 등 사용자 UI 디자인 변경
- Style: 코드 포맷 변경, 세미 콜론 누락, 코드 수정이 없는 경우
- Comment: 필요한 주석 추가 및 변경
- Docs: 문서를 수정한 경우
- Test: 테스트 추가, 테스트 리팩토링 (프로덕션 코드 변경 없음)
- Chore 빌드 태스트 업데이트, 패키지 매니저를 설정하는 경우(프로덕션 코드 변경 X)
- Rename: 파일 혹은 폴더명을 수정하는 경우
- Remove: 사용하지 않는 파일 혹은 폴더를 삭제하는 경우

<br/>
<br/>

#### 동사 종류
 - Add : 추가
 - Edit : 코드 수정
 - Remove : 삭제
 - Update : 문서, 버전 등의 업데이트 (코드 수정에서 사용 X)
<br/>
- 대문자 시작
- **필요 동사 셀프 추가 사용**


<br/>
<br/>

#### 예시
```
Feat(뉴스레터): Add 뉴스레터 기능 추가
Fix(뉴스레터): Remove 라인 삭제
Fix(뉴스레터): Edit 타이틀 수정
Remove(뉴스레터): Remove addok.jsp 파일 삭제
Comment(뉴스레터): Add 주석 추가
Design(뉴스레터): Edit 뉴스레터 CSS 수정
Desgin(뉴스레터): Remove 뉴스레터 테이블 삭제

Docs(Readme): Update README.md 업데이트

Chore(공통): Add 라이브러리 추가
Chore(공통): Edit 클래스패스 재설정
Refactor(공통): Change 패키지 폴더 구조 재구성
```
<br/>
<br/>

#### 참고
[커밋 컨벤션 참고 자료](https://overcome-the-limits.tistory.com/entry/%ED%98%91%EC%97%85-%ED%98%91%EC%97%85%EC%9D%84-%EC%9C%84%ED%95%9C-%EA%B8%B0%EB%B3%B8%EC%A0%81%EC%9D%B8-git-%EC%BB%A4%EB%B0%8B%EC%BB%A8%EB%B2%A4%EC%85%98-%EC%84%A4%EC%A0%95%ED%95%98%EA%B8%B0)







## dependency
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
