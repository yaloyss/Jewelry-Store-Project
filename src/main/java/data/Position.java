package data;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.List;

@Entity
@Table(name = "position")
@Getter
@Setter
@ToString

public class Position
{
    @Id
    @GeneratedValue
    private Long positionId;

    @Column (name = "positionName", nullable = false)
    private String positionName;

    @OneToMany(mappedBy = "position")
    private List<Employee> employee;
}
