package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Visit;

@Repository
public interface VisitRepository extends JpaRepository<Visit, Long> {

    public Visit findVisitById(long id);
}
