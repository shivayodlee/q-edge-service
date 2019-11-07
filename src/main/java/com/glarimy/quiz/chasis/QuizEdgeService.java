package com.glarimy.quiz.chasis;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

@SpringBootApplication
@EnableZuulProxy
public class QuizEdgeService {

	public static void main(String[] args) {
		SpringApplication.run(QuizEdgeService.class, args);
	}

}
