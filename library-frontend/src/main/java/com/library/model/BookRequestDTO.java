package com.library.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookRequestDTO {
    private String title;
    private String author;
    private String isbn;
    private String edition;
    private String publisher;
    private double price;
    private int copies;
    private String categoryName;
}