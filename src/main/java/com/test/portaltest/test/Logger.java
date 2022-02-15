package com.test.portaltest.test;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.util.Calendar;

@Aspect
@Component
public class Logger {

    @Pointcut("execution(public int TestService.add(..))")
    public void addMemo() { }

    @After("addMemo()")
    public void log(JoinPoint joinPoint) {

        MemoDTO dto = (MemoDTO)joinPoint.getArgs()[0];

        Calendar now = Calendar.getInstance();
        System.out.printf("[log %tF %tT] %s : %s\n", now, now, dto.getName(), dto.getMemo());
        System.out.println("AOP 성공");
    }
}
