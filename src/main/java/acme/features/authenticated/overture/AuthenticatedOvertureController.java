
package acme.features.authenticated.overture;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.entities.overture.Overture;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;
import acme.framework.entities.Authenticated;

@Controller
@RequestMapping("/authenticated/overture/")
public class AuthenticatedOvertureController extends AbstractController<Authenticated, Overture> {

	@Autowired(required = true)
	private AuthenticatedOvertureListService	listService;

	@Autowired(required = true)
	private AuthenticatedOvertureShowService	showService;


	@PostConstruct
	private void initialise() {
		super.addBasicCommand(BasicCommand.LIST, this.listService);
		super.addBasicCommand(BasicCommand.SHOW, this.showService);
	}
}
