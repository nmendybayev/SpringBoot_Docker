package net.java.springboot_docker_nurbol;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringbootDockerNurbolApplication {

	@GetMapping("/welcome")
	public String welcome(){
		return "Spring Boot Docker Project";
	}
	
	public static void main(String[] args) {
		SpringApplication.run(SpringbootDockerNurbolApplication.class, args);
	}

}
