<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Document</title>
   <style>
   
   </style>
</head>
<body>
   <!-- home.jsp -->
	<div>
		<h1>팀프로젝트 진행을 위한 세팅</h1>
		<span>제발 잘 됐으면 좋겠다..! 😵😵    </span>
		<hr>
		
		<details>
			<summary>dependency 목록</summary>
			<ul>
				<li>ojdbc6</li>
				<li>AOP</li>
				<li>MyBatis</li>
				<li>Socket</li>
				<li>spring-context-support</li>
				<li>lombok</li>
				<li>Servlet</li>
				<li>File Upload</li>
				<li>Tiles</li>
				<li>log4j</li>
			</ul>
		</details>		
		
		<details>
			<summary>기본 세팅 목록</summary>

			<ol>
				<li>초기 프로젝트 구동
					<ul>
						<li>✅ 톰캣 서버 등록</li>
					</ul>
					<ul>
						<li>✅ 스프링 버전 변경 > 4.3.18</li>
					</ul>
					<ul>
						<li>✅ 자바 버전 변경 1.6 > 11</li>
					</ul>
				</li>


				<li>pom.xml
					<ol>
						<li>✅ JDBC
							<ul>
								<li>"ojdbc6.jar”</li>
							</ul>
						</li>


						<li>✅ MyBatis
							<ul>
								<li>"mybatis”</li>
								<li>"mybatis-spring”</li>
								<li>"spring-orm”</li>
								<li>"commons-dbcp”</li>
							</ul>
						</li>


						<li>✅ lombok</li>


						<li>✅ log4js
							<ul>
								<li>"log4jdbc-remix"</li>
								<li>"log4j-core"</li>
							</ul>
						</li>


						<li>✅ AOP
							<ul>
								<li>"AOP Alliance"</li>
								<li>"Aspect JWeaver"</li>
								<li>"CGLib"</li>
							</ul>
						</li>


						<li>✅ Tiles
							<ul>
								<li>"tiles-core"</li>
								<li>"tiles-api"</li>
								<li>"tiles-servlet"</li>
								<li>"tiles-jsp"</li>
								<li>"tiles-template"</li>
							</ul>

						</li>


						<li>✅ fileupload
							<ul>
								<li>"commons-io"</li>
								<li>"commons-fileupload"</li>
							</ul>
						</li>

					</ol>
				</li>


				<li>✅ web.xml
					<ul>
						<li>인코딩 필터</li>
					</ul>
				</li>


				<li>root-context.xml
					<ol>
						<li>✅ "MyBatis"
							<ul>
								<li>"org.apache.commons.dbcp.BasicDataSource"</li>
								<li>"org.mybatis.spring.SqlSessionFactoryBean"</li>
								<li>"org.mybatis.spring.SqlSessionTemplate"</li>
							</ul>
						</li>

						<li>✅ "mybatis.xml 생성"
							<ul>
								<li>"/WEB-INF/mybatis.xml”</li>
							</ul>
						</li>

						<li>✅ "test.xml 생성"
							<ul>
								<li>"com.test.portaltest.mapper" 패키지 내 생성</li>
							</ul>
						</li>


						<li>✅ "log4j 설정"
							<ul>
								<li>"net.sf.log4jdbc.Log4jdbcProxyDataSource”</li>
							</ul>
						</li>


						<li>✅ "fileupload"
							<ul>
								<li>"multipartResolver 세팅"</li>
							</ul>
						</li>

					</ol>


				</li>


				<li>✅ servlet-context.xml
					<ul>
						<li>tiles 뷰 리졸버 세팅</li>
					</ul>
				</li>


				<li>✅ tiles.xml
					<ul>
						<li>WEB-INF > "tiles.xml" 생성</li>
					</ul>
				</li>


				<li>✅ log4j.xml
					<ul>
						<li>src/main/resources > "log4j.xml" > 선생님이 주신 코드로 변경</li>
					</ul>
				</li>

			</ol>

		</details>
		
		
		
	</div>

	<script>
   
   </script>
</body>
</html>





