
package acme.features.anonymous.tecnology;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.tecnology.Tecnology;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Anonymous;
import acme.framework.services.AbstractShowService;

@Service
public class AnonymousTecnologyShowService implements AbstractShowService<Anonymous, Tecnology> {

	@Autowired
	private AnonymousTecnologyRepository repository;


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
	public Tecnology findOne(final Request<Tecnology> request) {
		assert request != null;

		Tecnology result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findTecnologyById(id);

		return result;
	}

}
