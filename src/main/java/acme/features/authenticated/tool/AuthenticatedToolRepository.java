
package acme.features.authenticated.tool;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.tool.Tool;
import acme.framework.repositories.AbstractRepository;

public interface AuthenticatedToolRepository extends AbstractRepository {

	@Query("select t from Tool t")
	Collection<Tool> findAllTool();

	@Query("select t from Tool t where t.id = ?1")
	Tool findToolById(int id);
}
