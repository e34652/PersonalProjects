package com.steam.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Product {

    private int num;
    @NonNull private String name;
    @NonNull private String genre;
    @NonNull private String releaseDate;
    @NonNull private Integer price;
    private String simple;
    private String detail;
}
