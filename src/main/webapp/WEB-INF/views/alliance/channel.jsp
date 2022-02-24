<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    .container.channel {
        width: 300px;
    }

    .channel-add {
        padding: 5px 7px 3px 9px;
        border-radius: 50%;
        font-size: 16px;
    }

    .channel-add:hover {
        background-color: #e6e6e6;
    }

    .channel-selector {
        display: flex;
        align-items: center;
        padding: 10px;
        font-size: 14px;
    }

    .channel-selector:hover {
        background-color: #e6e6e6;
        font-weight: bold;
        cursor: pointer;
    }

    .channel-selector.sel {
        font-weight: bold;
        color: #003d63;
    }

    .channel-notice {
        width: 10px;
        height: 10px;
        margin-left: 10px;
        margin-right: 20px;
        border-radius: 50%;
    }

    .channel-notice.new {
        background-color: tomato;
    }

    .channel-selector > .glyphicon {
        margin-right: 10px;
    }

</style>

<div class="container channel">
    <div class="sub-header">
        Channels
        <div class="channel-add" onclick="modalAddChannel()"><span class="glyphicon glyphicon-plus"></span></div>
    </div>
    <div class="content">
        <div class="channel-list"></div>
    </div>
</div>

<script>

    function listChannel() {

        $('.channel-list').html('');

        $.ajax({
            type: 'GET',
            url: 'http://localhost:8090/alliance/groups/' + selGroup + '/channels',
            contentType: 'application/json;charset=UTF-8',

            dataType: 'json',
            success: function(list) {
                $(list).each((index, channel) => {

                    let $div = $('<div>');

                    $div.attr('data-channel-seq', channel.seq);
                    $div.text(channel.name);
                    $div.prepend('<div class="glyphicon glyphicon-comment"></div>');
                    $div.prepend('<div class="channel-notice"></div>');
                    $div.addClass('channel-selector');

                    $('.channel-list').append($div);

                    if (index == 0) {
                        moveToChannel($('.channel-selector'));
                        clearChat();
                        selPage = 1;
                        listMessage();
                        setTimeout(function() {
                            $('.main-content>.content').scrollTop($('.main-content>.content').prop('scrollHeight'));
                        }, 50);
                    }

                    subTopic(channel.seq);
                });

                addEventChannelSelector();
            }
        })
    }

    function addEventChannelSelector() {

        $('.channel-selector').on('click', function() {
            moveToChannel($(this));
            clearChat();
            selPage = 1;
            listMessage();
            $(this).children('.channel-notice').removeClass('new');
        });
    }

    function moveToChannel(channel) {
        $('.channel-selector').removeClass('sel');
        channel.addClass('sel');
        selChannel = channel.data('channel-seq');
        $('.main-content > .sub-header').html(channel.text());
    }

    function listMessage() {

        $.ajax({
            type: 'GET',
            url: 'http://localhost:8090/alliance/channels/' + selChannel + '?page=' + selPage,
            contentType: 'application/json;charset=UTF-8',

            dataType: 'json',
            success: function(list) {
                $(list).each((index, message) => {

                    prependMessage(message);
                    pageEnd = false;
                });
            }
        })
    }

    function modalAddChannel() {
        $('.modal-add-channel').modal();
    }

    function addChannel() {

        let data = JSON.stringify($('#form-add-channel').serializeObject());
        console.log(data);

        $.ajax({
            type: 'POST',
            url: 'http://localhost:8090/alliance/groups/' + selGroup + '/channels',
            contentType: 'application/json;charset=UTF-8',
            data: data,

            dataType: 'json',
            success: function(result) {
                alert('채널 추가에 성공했습니다.');
                $('.modal-add-channel').modal('hide');
                listChannel();
                moveToChannel($('.channel-list').children('div:last-child'));
            },

            error: function(a,b,c) {
                alert('채널 추가에 실패했습니다.');
            }
        });
    }

</script>