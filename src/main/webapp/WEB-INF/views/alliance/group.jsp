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

    .group-name {
        text-align: left;
        font-size: 20px;
        font-weight: bold;
    }

    .modal-backdrop {
        background-color: transparent;
    }

    .group-list.modal-content {
        display: block;
        position: absolute;
        top: 170px;
        left: 30px;
        width: 300px;
        height: auto;
        border: 1px solid #BEBEBE;
        border-radius: 4px;
        background-color: white;
    }

    .group-list > div {
        padding: 20px;
        font-size: 14px;
        font-weight: bold;
        text-align: left;
    }

</style>

<div class="container group">
    <div class="group-selector btn btn-default">
        <div class="group-name">현재 그룹명</div>
        <span class="glyphicon glyphicon-triangle-bottom"></span>
    </div>
<%--    <div class="group-selector form-control">--%>
<%--        <input type="button" class="btn btn-default" value="그룹개설" onclick="modalAddGroup()">--%>
<%--    </div>--%>
    <div class="modal modal-group">
        <div class="group-list modal-content">
        </div>
    </div>
</div>


<script>
    function listGroup() {

        $.ajax({
            type: 'GET',
            url: 'http://localhost:8090/alliance/groups',
            contentType: 'application/json;charset=UTF-8',

            dataType: 'json',
            success: function(list) {
                $(list).each((index, item) => {

                    let $div = $('<div>');
                    $div.attr('data-group-seq', item.seq);
                    $div.text(item.name);
                    $('.group-list').append($div);

                    if (index == 0) {
                        selGroup = item.seq;

                        console.log("seq: ", selGroup);
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

            console.log($(this));

            moveToGroup($(this).data('group-seq'));

            $('.modal-group').modal('hide');
        })
    }

    function moveToGroup(seqGroup) {
        selGroup = seqGroup;

        listChannel();
    }

    $('.group-selector').on('click', function() {

        $('.modal-group').modal('show');
    });

</script>