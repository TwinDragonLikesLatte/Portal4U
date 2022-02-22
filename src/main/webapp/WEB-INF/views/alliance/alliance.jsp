<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.2/sockjs.min.js"></script>
    <script src="/resources/js/jquery.serializeObject.js"></script>
    <style>

        body {
            display: flex;
            justify-content: center;
            width: 100vw;
            /*background-color: #4f8548;*/
        }

        .container.main {
            display: grid;
            grid-template-columns: 300px minmax(600px, 1fr) 300px;
            grid-template-rows: 60px 60px minmax(500px, 1fr) 100px;
            grid-gap: 20px;
            width: 100vw;
            height: 100vh;
            padding : 20px;
            overflow: hidden;
            /*background-color: #4f8548;*/
        }

        header {
            grid-column: 1 / 4;
            grid-row: 1 / 2;
        }

        .container.group {
            grid-column: 1 / 2;
            grid-row: 2 / 3;
        }

        .container.channel {
            grid-column: 1 / 2;
            grid-row: 3/ 4;
        }

        .container.myinfo {
            grid-column: 1 / 2;
            grid-row: 4 / 5;
        }

        .container.main-content {
            grid-column: 2 / 3;
            grid-row: 2 / 5;
        }

        .container.people {
            grid-column: 3 / 4;
            grid-row: 2 / 5;
        }

        .container {
            padding: 0;
            border: 1px solid #BEBEBE;
            border-radius: 4px;
            background-color: white;
        }

        .container > div {
            width: 100%;
        }

        .container > .sub-header {
            display: flex;
            align-items: center;
            height: 60px;
            padding: 0 20px;
            border-bottom: 1px solid #BEBEBE;
            font-size: 20px;
            font-weight: bold;
        }

        .container > .content {
            height: calc(100% - 60px);
            overflow-y: scroll;
        }

        .modal > div {
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .modal-content {
            width: 400px;
            padding: 20px;
        }

        .modal .btn {
            width: 100%;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<!--  -->
<div class="container main">

    <tiles:insertAttribute name="header" />
    <tiles:insertAttribute name="group" />
    <tiles:insertAttribute name="chatroom" />
    <tiles:insertAttribute name="myinfo" />
    <tiles:insertAttribute name="content" />
    <tiles:insertAttribute name="people" />

    <div class="modal">
        <div>
            <div class="modal-content">
                <h1>그룹 추가</h1>
                <form id="form-add-group">
                    <input type="text" class="form-control" name="name" placeholder="그룹 이름을 입력해주세요.">
                    <input type="button" id="btn-add-group" class="btn btn-primary" value="그룹 개설">
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    let socket = null;
    let ws = null;
    let client = null;

    let selGroup = null;
    let selChannel = null;

    $(document).ready( function() {
        connectStomp();
        listGroup();
    })

    function connectStomp() {

        socket = new SockJS('/alliance/stomp');
        client = Stomp.over(socket);
        client.connect({}, function(frame) {
            console.log('Cennected to Stomp', frame);
        });

        $('.msg-input').keydown((evt) => {
            if (evt.keyCode == 13) {

                client.send('/chat/' + selChannel, {}, JSON.stringify({
                    'text': $('.msg-input').val(),
                    'seqSender': '${loginInfo.seq}',
                    'nameSender': '${loginInfo.name}',
                    'seqChannel': selChannel
                }));

                $('.msg-input').val('');
            }
        });
    }

    function subTopic(seqChannel) {
        //해당 토픽 구독
        if (client != null) {
            client.subscribe('/topic/' + seqChannel, function (event) {

                let message = JSON.parse(event.body);

                if (selChannel == message.seqChannel) {

                    addMessage(message);
                }
            });
        }
    }

    function addMessage(message) {
        let $div = $('<div>');
        $div.addClass('chat-message');
        $div.append('<div class="chat-member">' + message.nameSender + '<span>' + message.regdate + '</span></div>')
        $div.append('<div class="chat-text">' + message.text + '</div>')
        $('.main-content>.content').append($div);
        $('.main-content').scrollTop('.chat-message'[0]);
    }

</script>

</body>
</html>