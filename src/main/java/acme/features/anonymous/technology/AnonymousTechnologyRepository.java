
package acme.features.anonymous.technology;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.technology.Technology;
import acme.framework.repositories.AbstractRepository;

public interface AnonymousTechnologyRepository extends AbstractRepository {

	@Query("select t from Technology t")
	Collection<Technology> findAllTecnologies();

	@Query("select t from Technology t where t.id = ?1")
	Technology findTecnologyById(int id);

	@Query("SELECT t FROM Technology t ORDER BY t.stars desc")
	Collection<Technology> findAllTecnologiesOrderedByStars();
}
