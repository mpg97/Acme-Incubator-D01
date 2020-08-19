
package acme.features.administrator.notice;

import java.net.URL;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.notice.Notice;
import acme.framework.components.Errors;
import acme.framework.components.HttpMethod;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractCreateService;

@Service
public class AdministratorNoticeCreateService implements AbstractCreateService<Administrator, Notice> {

	@Autowired
	AdministratorNoticeRepository repository;


	@Override
	public boolean authorise(final Request<Notice> request) {
		assert request != null;

		return true;
	}

	@Override
	public Notice instantiate(final Request<Notice> request) {
		assert request != null;

		Notice result;

		result = new Notice();

		return result;
	}

	@Override
	public void unbind(final Request<Notice> request, final Notice entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "title", "body", "creation", "deadline", "header", "link");

		if (request.isMethod(HttpMethod.GET)) {
			model.setAttribute("sure", "false");
		} else {
			request.transfer(model, "sure");
		}

	}

	@Override
	public void bind(final Request<Notice> request, final Notice entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		request.bind(entity, errors);
	}

	@Override
	public void validate(final Request<Notice> request, final Notice entity, final Errors errors) {
		// TODO Auto-generated method stub
		assert request != null;
		assert entity != null;
		assert errors != null;

		Calendar calendar;
		Date minimumDeadline;
		Boolean isAccepted;

		if (!errors.hasErrors("deadline")) {
			calendar = new GregorianCalendar();
			minimumDeadline = calendar.getTime();
			Boolean isAfter = entity.getDeadline().after(minimumDeadline);
			errors.state(request, isAfter, "deadline", "administrator.notice.deadline.before");
		}

		if (!errors.hasErrors("link")) {

			Boolean validUrl = true;

			String[] linksFina = entity.getLink().split(";");

			for (String s : linksFina) {

				validUrl &= AdministratorNoticeCreateService.isValid(s);
			}

			errors.state(request, validUrl, "link", "administrator.notice.link.valid");
		}

		isAccepted = request.getModel().getBoolean("sure");
		errors.state(request, isAccepted, "sure", "administrator.notice.sure.must-accept");

	}

	@Override
	public void create(final Request<Notice> request, final Notice entity) {
		assert request != null;
		assert entity != null;
		Date moment;

		moment = new Date(System.currentTimeMillis() - 1);

		/*
		 * List<String> links = entity.getLink();
		 *
		 * String[] linksFina = links.get(0).split(";");
		 *
		 * List<String> linksFinal = new ArrayList<String>();
		 *
		 * for (String s : linksFina) {
		 *
		 * linksFinal.add(s);
		 * }
		 *
		 * entity.setLink(linksFinal);
		 */

		entity.setCreation(moment);
		this.repository.save(entity);

	}

	public static boolean isValid(final String url) {
		/* Try creating a valid URL */
		try {
			new URL(url).toURI();
			return true;
		}

		// If there was an Exception
		// while creating URL object
		catch (Exception e) {
			return false;
		}
	}

}
