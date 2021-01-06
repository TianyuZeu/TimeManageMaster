package com.tmm.boot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;
/**
 * springboot启动类
 * @author aoliang
 *
 */
@SpringBootApplication
@ComponentScan("com.tmm")
@MapperScan("com.tmm.dao")
@EnableTransactionManagement
public class TmmManagerApplication {
	public static void main(String[] args) {
		SpringApplication.run(TmmManagerApplication.class, args);
	}

}
