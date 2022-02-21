<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

    .container.group {
        display: flex;
        align-items: center;
        width: 300px;
        height: 60px;
    }

    .group-selector {
        width: 200px;
    }

</style>

<div class="container group">
    <select class="group-selector form-control">
    <input type="button" class="btn btn-default" value="그룹개설" onclick="modalAddGroup()">
    </select>
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

                    let $div = $('<option>');
                    $div.attr('data-group-seq', item.seq);
                    $div.text(item.name);
                    $div.addClass('group');
                    $('.container.group').children('select').append($div);

                    if (index == 0) {
                        selGroup = item.seq;
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

        $('.group-selector').on('change', function(event) {

            moveToGroup($('.group:selected').data('group-seq'));
        })
    }

    function moveToGroup(seqGroup) {
        selGroup = seqGroup;

        listChannel();
    }
</script>