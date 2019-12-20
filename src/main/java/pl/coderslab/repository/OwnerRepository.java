package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Owner;

import java.util.List;

@Repository
public interface OwnerRepository extends JpaRepository<Owner, Long> {

    public Owner findOwnerById(long id);
    public List<Owner> findAll();
}
