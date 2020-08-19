
package acme.features.authenticated.tecnology;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.tecnology.Tecnology;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Authenticated;
import acme.framework.services.AbstractListService;

@Service
public class AuthenticatedTecnologyListService implements AbstractListService<Authenticated, Tecnology> {

	@Autowired
	AuthenticatedTecnologyRepository repository;


	@Override
	public boolean authorise(final Request<Tecnology> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<Tecnology> request, final Tecnology entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "title", "sector", "inventor", "description", "web", "email", "openSource");

	}

	@Override
	public Collection<Tecnology> findMany(final Request<Tecnology> request) {
		assert request != null;

		Collection<Tecnology> result;

		result = this.repository.findAllTecnologies();

		return result;
	}

}
