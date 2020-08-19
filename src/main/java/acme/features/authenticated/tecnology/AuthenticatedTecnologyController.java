
package acme.features.authenticated.tecnology;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.entities.tecnology.Tecnology;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;
import acme.framework.entities.Authenticated;

@Controller
@RequestMapping("/authenticated/tecnology/")
public class AuthenticatedTecnologyController extends AbstractController<Authenticated, Tecnology> {

	@Autowired(required = true)
	private AuthenticatedTecnologyShowService	showService;

	@Autowired(required = true)
	private AuthenticatedTecnologyListService	listService;


	@PostConstruct
	private void initialise() {
		super.addBasicCommand(BasicCommand.SHOW, this.showService);
		super.addBasicCommand(BasicCommand.LIST, this.listService);
	}
}
