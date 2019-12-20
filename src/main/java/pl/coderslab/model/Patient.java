package pl.coderslab.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@RequiredArgsConstructor
@EqualsAndHashCode
@ToString
@Entity
@Table(name = "patients")
public class Patient implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "patient_id")
    private long id;

    @NotNull
    @NotBlank
    private String name;

    private String dateOfBirth;

    @NotNull
    @NotBlank
    private String gender;

    @NotNull
    @NotBlank
    private String species;

    private String breed;
    private long chipNo;

    @Size(max = 200, message = "to long")
    private String critInf;

    @ManyToOne
    @JoinColumn(name = "id_owner")
    private Owner owner;

    @OneToMany(mappedBy = "patient", fetch = FetchType.EAGER)
    private List<Visit> visits;
}
