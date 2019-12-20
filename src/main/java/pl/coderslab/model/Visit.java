package pl.coderslab.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@RequiredArgsConstructor
@EqualsAndHashCode
@ToString
@Entity
@Table(name = "visits")
public class Visit implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "visit_id")
    private long id;

    @NotNull
    @NotEmpty
    private String date;

    @NotNull
    @NotBlank
    @Size(max = 300)
    private String recommendations;

    @ManyToOne
    @JoinColumn(name = "id_patient")
    private Patient patient;

    @ManyToOne
    @JoinColumn(name = "id_vet")
    private Vet vet;

}
