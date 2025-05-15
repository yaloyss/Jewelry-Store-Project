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

    @ManyToOne
    @JoinColumn(name = "productId", nullable = false)
    private Product product;

    @ManyToOne
    @JoinColumn (name = "employeeId", nullable = false)
    private Employee employee;

    @ManyToOne
    @JoinColumn (name = "clientId", nullable = false)
    private Client client;
}
