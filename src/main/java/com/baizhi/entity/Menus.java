package com.baizhi.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.swing.*;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Menus {
    private Spring id;
    private Spring name;
    private String photo;
    private Date create_date;
    private String create_person;
    private String digest;
    private String step;
}
