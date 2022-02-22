<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    .container.channel {
        width: 300px;
    }

    .group-selector {
        width: 200px;
    }

    .channel-selector {
        padding: 10px;
        padding-left: 40px;
        font-size: 14px;
    }

    .channel-selector:hover {
        background-color: #e6e6e6;
        font-weight: bold;
    }

    .channel-selector.sel {
        font-weight: bold;
        color: #003d63;
    }

    .channel-selector > .glyphicon {
        margin-right: 10px;
    }

</style>

<div class="container channel">
    <div class="sub-header">Channels</div>
    <div class="content">
<%--        <input type="button" class="btn btn-default" value="subTopicAll" onclick="subTopic1(), subTopic2()">--%>
<%--        <input type="button" class="btn btn-default" value="subTopic1" onclick="subTopic1()">--%>
<%--        <input type="button" class="btn btn-default" value="subTopic2" onclick="subTopic2()">--%>
    </div>
</div>

<script>

    function listChannel() {

        $('.container.channel>.content').html('');

        $.ajax({
            type: 'GET',
            url: 'http://localhost:8090/alliance/groups/' + selGroup + '/channels',
            contentType: 'application/json;charset=UTF-8',

            dataType: 'json',
            success: function(list) {
                $(list).each((index, channel) => {

                    let $div = $('<div>');

                    if (index == 0) {
                        selChannel = channel.seq;
                        $('.main-content > .sub-header').html(channel.name);
                        $div.addClass('sel');
                    }

                    $div.attr('data-channel-seq', channel.seq);
                    $div.text(channel.name);
                    $div.prepend('<div class="glyphicon glyphicon-comment"></div>');
                    $div.addClass('channel-selector');

                    $('.container.channel>.content').append($div);

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
        });
    }

    function moveToChannel(channel) {
        $('.channel-selector').removeClass('sel');
        channel.addClass('sel');
        selChannel = channel.data('channel-seq');
        $('.main-content > .sub-header').html(channel.text());
    }

</script>