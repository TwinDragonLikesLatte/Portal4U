<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    body {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .container {
        margin-bottom: 100px;
    }

    .btn {
        width: 100%;
    }

    input {
        margin-top : 10px;
    }
</style>
<div class="container">
    <h1 class="page-header">회원가입</h1>
    <form id="form-join" onsubmit="return false;">
        <div>
            <input type="text" class="form-control" placeholder="아이디" name="id" required>
            <input type="text" class="form-control" placeholder="이름" name="name" required>
            <input type="password" class="form-control" placeholder="비밀번호" name="pw" required>
            <input type="button" class="btn btn-primary" value="회원가입" onclick="memberJoin()">
            <input type="button" class="btn btn-default" value="돌아가기" onclick="location.href='/login'">
        </div>
    </form>
</div>

<script src="/resources/js/jquery.serializeObject.js"></script>
<script>

    function memberJoin() {

        let data = JSON.stringify($('#form-join').serializeObject());

        $.ajax({
            type: 'POST',
            url: 'http://localhost:8090/member',
            contentType: 'application/json;charset=UTF-8',
            data: data,

            dataType: 'json',
            success: function(result) {
                if (result == 1) {
                    alert('회원가입이 완료되었습니다.')
                    location.href = '/login';
                    return false;
                } else {
                    alert('회원가입에 실패했습니다.')
                    return false;
                }
            },

            error: function(a,b,c) {
                console.log(a,b,c);
            }
        })
    }

</script>