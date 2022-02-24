<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    .container.main-content {
        position: relative;
    }

    .main-content > .content {
        height: calc(100% - 134px);
        padding: 10px;
    }

    .msg-input-wrap {
        position: absolute;
        left: 0;
        bottom: 0;
        width: 100%;
        padding: 20px;
        border-top: 1px solid #BEBEBE;
        background-color: white;
    }

    .msg-input {
        display: flex;
        line-height: 0px;
    }

    .chat-message {
        border: 1px solid #BEBEBE;
        border-radius: 4px;
        margin: 10px;
        padding: 10px 20px;
        font-size: 14px;
    }

    .chat-member {
        font-weight: bold;
    }

    .chat-member > span {
        margin-left: 10px;
        font-size: 12px;
        font-weight: normal;
        color: #909090;
    }

    .chat-text {
    }

</style>

<div class="container main-content">
    <div class="sub-header">채팅방 이름</div>
    <div class="content">
        <div class="chat-message">
            <div class="chat-member">홍길동<span>2022-02-22 15:39:05</span></div>
            <div class="chat-text">아야어여오요</div>
        </div>
    </div>
    <div class="msg-input-wrap">
        <input type="textarea" class="msg-input form-control" placeholder="메시지를 입력해주세요.">
    </div>
</div>

<script>

    function clearChat() {
        $('.container.main-content > .content').html('');
    }

    $('.main-content>.content').on('scroll', function() {
        if ($('.main-content>.content').scrollTop() < 500) {

            if (!pageEnd) {

                selPage ++;
                pageEnd = true;
            }
            console.log(selPage);
            listMessage();
        }
    });

</script>
