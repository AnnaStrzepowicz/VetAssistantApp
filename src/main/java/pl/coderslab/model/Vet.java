package pl.coderslab.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@RequiredArgsConstructor
@EqualsAndHashCode
@ToString
@Entity
@Table(name = "vets")
public class Vet implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "vet_id")
    private long id;

    @NotNull
    @NotBlank
    private String firstName;

    @NotNull
    @NotBlank
    private String username;

    @NotNull
    @NotBlank
    private String password;

    @NotNull
    @NotBlank
    private String lastName;

    @NotNull
    @NotBlank
    private String address;

    @NotNull
    @NotBlank
    private String phone;

    @Email
    private String email;

    //prawo wykonywania zawody pwz
    @NotNull
    @Digits(integer = 5, fraction = 0)
    private  long pwz;

    @OneToMany(mappedBy = "vet", fetch = FetchType.EAGER)
    private List<Visit> visits;
}
