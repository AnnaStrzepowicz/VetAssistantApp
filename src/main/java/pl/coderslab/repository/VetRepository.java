package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Vet;

@Repository
public interface VetRepository extends JpaRepository<Vet, Long> {

    public Vet findVetById(long id);
}
