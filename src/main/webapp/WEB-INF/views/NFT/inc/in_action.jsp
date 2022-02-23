<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   


<div class="NTF_in_action">
      <h2 class="now_action_title">현재 경매 상황</h2>
      <input type="text" name="text_price" id="text_price" class="input_text" placeholder="현재 입찰가" disabled />
      <input type="text" name="ask_price" id="ask_price" class="input_text" placeholder="호가" disabled />
      <br />
      <input type="text" name="text_price" id="text_price" class="input_text" placeholder="30,000" disabled />
      <input type="text" name="ask_price" id="ask_price" class="input_text" placeholder="1,000" disabled />
      <div class="action_btn">
        <form action="#" method="post" class="in_action">
          <input type="text" name="input_price" id="input_price" class="input_money" placeholder="희망 입찰가" />
          <input class="pay" type="submit" value="입찰하기">
        </form>
      </div>
    </div>
