
package acme.features.anonymous.technology;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.technology.Technology;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Anonymous;
import acme.framework.services.AbstractShowService;

@Service
public class AnonymousTechnologyShowService implements AbstractShowService<Anonymous, Technology> {

	@Autowired
	private AnonymousTechnologyRepository repository;


	@Override
	public boolean authorise(final Request<Technology> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<Technology> request, final Technology entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "title", "sector", "inventor", "description", "web", "email", "openSource");

	}

	@Override
	public Technology findOne(final Request<Technology> request) {
		assert request != null;

		Technology result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findTecnologyById(id);

		return result;
	}

}
