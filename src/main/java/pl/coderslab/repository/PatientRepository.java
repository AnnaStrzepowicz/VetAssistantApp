package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Long> {

    public Patient findPatientById(long id);
}
