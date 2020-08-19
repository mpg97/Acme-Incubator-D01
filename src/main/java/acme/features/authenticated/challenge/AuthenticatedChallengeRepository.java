
package acme.features.authenticated.challenge;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.challenge.Challenge;
import acme.framework.repositories.AbstractRepository;

public interface AuthenticatedChallengeRepository extends AbstractRepository {

	@Query("select c from Challenge c")
	Collection<Challenge> findAllChallenge();

	@Query("select t from Challenge t where t.id = ?1")
	Challenge findChallengeById(int id);

}
