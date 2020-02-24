package com.next;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication//入口类，启动Springboot项目
@MapperScan(basePackages = "com.next.mapper")
@ComponentScan(basePackages = {"com.next"})//扫描同目录及同目录下级目录的类文件
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);		
	}

}
