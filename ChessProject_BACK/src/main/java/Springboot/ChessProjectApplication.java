package Springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
@Configuration
public class ChessProjectApplication {
	public static void main(String[] args) {
		SpringApplication.run(ChessProjectApplication.class, args);
	}
}
