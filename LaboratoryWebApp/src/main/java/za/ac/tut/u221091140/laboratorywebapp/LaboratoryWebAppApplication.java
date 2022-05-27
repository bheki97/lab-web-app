package za.ac.tut.u221091140.laboratorywebapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "za.ac.tut.u221091140.laboratorywebapp")
public class LaboratoryWebAppApplication {

    public static void main(String[] args) {
        SpringApplication.run(LaboratoryWebAppApplication.class, args);
    }

}
