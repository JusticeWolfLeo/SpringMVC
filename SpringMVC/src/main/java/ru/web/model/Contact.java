package ru.web.model;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class Contact {
    private Integer id;
    private String name;
    private String lastName;
    private String email;
    private String phone;
}
