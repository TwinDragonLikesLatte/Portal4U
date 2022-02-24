<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    .group-selector {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
        height: 100%;
        padding: 0 20px;
        border: none;
    }

    .group-selector > .glyphicon {
        margin-right: 10px;
    }

    .group-name {
        text-align: left;
        font-size: 20px;
        font-weight: bold;
    }

    .modal-backdrop {
        background-color: transparent;
    }

    .group.modal-content {
        display: block;
        position: absolute;
        top: 170px;
        left: 30px;
        width: 300px;
        height: auto;
        padding: 0;
        border: 1px solid #BEBEBE;
        border-radius: 4px;
        background-color: white;
        overflow: hidden;
    }

    .group-list > div,
    .group-add {
        padding: 20px;
        font-size: 14px;
        font-weight: bold;
        text-align: left;
    }

    .group-list > div:hover,
    .group-add:hover {
        background-color: #e6e6e6;
        cursor: pointer;
    }

</style>

<div class="container group">
    <div class="group-selector btn btn-default">
        <div class="group-name">현재 그룹명</div>
        <span class="glyphicon glyphicon-triangle-bottom"></span>
    </div>
    <div class="modal modal-group">
        <section class="group modal-content">
            <div class="group-list"></div>
            <div class="group-add" onclick="modalAddGroup()"><span class="glyphicon glyphicon-plus"></span> 그룹 추가</div>
        </section>
    </div>
</div>


<script>
    function listGroup() {

        $('.group-list').html('');

        $.ajax({
            type: 'GET',
            url: 'http://localhost:8090/alliance/groups',
            contentType: 'application/json;charset=UTF-8',

            dataType: 'json',
            success: function(list) {
                $(list).each((index, group) => {

                    let $div = $('<div>');
                    $div.attr('data-seq-group', group.seq);
                    $div.text(group.name);
                    $('.group-list').append($div);

                    if (index == 0) {

                        selGroup = group.seq;
                        $('.group-name').text(group.name);
                        listChannel();
                        listPeople();
                    }
                });

                addEventGroupSelector();
            },

            error: function(a,b,c) {
                console.log(a,b,c);
            }
        })
    }

    function addEventGroupSelector() {

        $('.group-list').children('div').on('click', function(event) {

            moveToGroup($(this));

            $('.modal-group').modal('hide');
        })
    }

    function moveToGroup(group) {
        selGroup = group.data('seq-group');
        $('.group-name').text(group.text());

        clearChat();
        listChannel();
        listPeople();
    }

    $('.group-selector').on('click', function() {

        $('.modal-group').modal('show');
    });

    function modalAddGroup() {
        $('.modal-add-group').modal();
    }

    function addGroup() {

        let data = JSON.stringify($('#form-add-group').serializeObject());

        $.ajax({
            type: 'POST',
            url: 'http://localhost:8090/alliance/groups',
            contentType: 'application/json;charset=UTF-8',
            data: data,

            dataType: 'json',
            success: function(result) {
                alert('그룹 추가에 성공했습니다.');
                $('.modal-add-group').modal('hide');
                $('.modal-group').modal('hide');
                listGroup();
                moveToGroup($('.group-list').children('div:last-child'));
            },

            error: function(a,b,c) {
                alert('그룹 추가에 실패했습니다.');
            }
        });
    }

</script>