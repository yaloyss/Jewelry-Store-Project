package com.yaloys.jewelry_store.data;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.time.LocalDate;

@Entity
@Table(name = "bill")
@Getter
@Setter
@ToString

public class Bill
{
    @Id
    @GeneratedValue
    private Long billId;

    @Column(name = "billDate", nullable = false)
    private LocalDate billDate;

    @Column (name = "productId", nullable = false)
    private Long productId;

    @Column (name = "employeeId", nullable = false)
    private Long employeeId;

    @Column (name = "clientId", nullable = false)
    private Long clientId;
}
