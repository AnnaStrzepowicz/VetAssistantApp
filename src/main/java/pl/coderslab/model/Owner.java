package pl.coderslab.model;


import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@RequiredArgsConstructor
@EqualsAndHashCode
@ToString
@Entity
@Table(name = "owners")
public class Owner {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "owner_id")
    private long id;

    @NotNull
    private String firstName;

    @NotNull
    private String lastName;

    @NotNull
    private String address;

    @NotNull
    private String phone;

    @Email
    private String email;

    @OneToMany(mappedBy = "owner", fetch = FetchType.EAGER)
    private List<Patient> patients;


}
