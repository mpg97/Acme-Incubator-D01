
package acme.features.anonymous.gonzalezBulletin;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.entities.bulletins.GonzalezBulletin;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;
import acme.framework.entities.Anonymous;

@Controller
@RequestMapping("/anonymous/gonzalez-bulletin/")
public class AnonymousGonzalezBulletinController extends AbstractController<Anonymous, GonzalezBulletin> {

	@Autowired
	private AnonymousGonzalezBulletinCreateService	createService;

	@Autowired
	private AnonymousGonzalezBulletinListService	listService;

	@Autowired
	private AnonymousGonzalezBulletinShowService	showService;


	@PostConstruct
	private void initialise() {
		super.addBasicCommand(BasicCommand.CREATE, this.createService);
		super.addBasicCommand(BasicCommand.LIST, this.listService);
		super.addBasicCommand(BasicCommand.SHOW, this.showService);
	}

}
