<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    .people-add {
        padding: 5px 7px 3px 9px;
        border-radius: 50%;
        font-size: 16px;
    }

    .people-add:hover {
        background-color: #e6e6e6;
    }

    .people-wrap {
        display: flex;
        align-items: center;
        padding: 10px 20px;
    }

    .people-wrap:hover {
        background-color: #e6e6e6;
    }

    .people-thumb {
        width: 40px;
        height: 40px;
        margin-right: 20px;
        border-radius: 50%;
    }

    .people-name {
        font-size: 16px;
    }

</style>

<div class="container people">
    <div class="sub-header">
        People
        <div class="people-add" onclick="modalAddPeople()"><span class="glyphicon glyphicon-plus"></span></div>
    </div>
    <div class="content">
        <div class="people-list">
            <div class="people-wrap">
                <div class="people-thumb"></div>
                <div class="people-name">회원1</div>
            </div>
            <div class="people-wrap">
                <div class="people-thumb"></div>
                <div class="people-name">회원1</div>
            </div>
        </div>
    </div>
</div>

<script>

    function listPeople() {

        $('.people-list').html('');

        $.ajax({
            type: 'GET',
            url: 'http://localhost:8090/alliance/groups/' + selGroup + '/people',
            contentType: 'application/json;charset=UTF-8',

            dataType: 'json',
            success: function(list) {
                $(list).each((index, people) => {

                    let $div = $('<div>');

                    $div.attr('data-people-seq', people.seq);
                    let color = randomColor();

                    $div.append('<div class="people-thumb" style="background-color: #' + color + ';"></div>');

                    if (people.seq_member == ${loginInfo.seq}) {
                        $('.member-thumb').prop('style', 'background-color: #' + color + ';');
                    }

                    $div.append('<div class="people-name">' + people.name + '</div>');
                    $div.addClass('people-wrap');

                    $('.people-list').append($div);
                });
            }
        })
    }

    function randomColor() {
        return Math.floor(Math.random()*16777215).toString(16);
    }

    function modalAddPeople() {
        $('.modal-add-people').modal();
    }

    function addPeople() {

        let data = JSON.stringify($('#form-add-channel').serializeObject());
        console.log(data);

        $.ajax({
            type: 'POST',
            url: 'http://localhost:8090/alliance/groups/' + selGroup + '/people',
            contentType: 'application/json;charset=UTF-8',
            data: data,

            dataType: 'json',
            success: function(result) {
                alert('회원 초대에 성공했습니다.');
                $('.modal-add-channel').modal('hide');
                listChannel();
                moveToChannel($('.channel-list').children('div:last-child'));
            },

            error: function(a,b,c) {
                alert('회원 초대에 실패했습니다.');
            }
        });
    }

</script>