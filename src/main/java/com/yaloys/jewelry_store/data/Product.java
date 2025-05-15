package com.yaloys.jewelry_store.data;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.List;
import java.math.BigDecimal;

@Entity
@Table (name = "product")
@Getter
@Setter
@ToString

public class Product {
    @Id
    @GeneratedValue
    private Long id;

    @Column (name = "name")
    private String name;

    @Column (name = "weight", precision = 8, scale = 2)
    private BigDecimal weight;

    @Column (name = "metalType")
    private String metalType;

    @Column (name = "stoneType")
    private String stoneType;

    @Column (name = "price", precision = 10, scale = 2, nullable = false)
    private BigDecimal price;

    @Column (name = "manufacturer")
    private String manufacturer;

    @Column (name = "size", precision = 8, scale = 2)
    private BigDecimal size;

    @OneToMany(mappedBy = "product")
    private List<Bill> bills;

}
