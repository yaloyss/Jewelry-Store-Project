package com.yaloys.jewelry_store.user;

import java.math.BigDecimal;

public record  ProductRequest (String name, BigDecimal weight, String metalType, String stoneType, BigDecimal price, String manufacturer, BigDecimal size)
{}
