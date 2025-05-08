package data;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDate;

@Entity
@Table (name = "employee")
@Getter
@Setter
@ToString

public class Employee {
    @Id
    @GeneratedValue
    private Long id;

    @Column (name = "fullName", nullable = false)
    private String fullName;

    @Column (name = "birthDate")
    private LocalDate birthDate;

    @Column (name = "phoneNumber", nullable = false)
    private String phoneNumber;

    @Column (name = "schedule")
    private String schedule;

    @Column (name = "position")
    private String position;
}
