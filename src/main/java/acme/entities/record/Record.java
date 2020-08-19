
package acme.entities.record;

import javax.persistence.Entity;
import javax.validation.constraints.Email;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Record extends DomainEntity {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	private String				title;

	private String				sector;

	private String				inventor;

	private String				description;

	private String				web;

	@Email
	private String				email;

	private Boolean				openSource;

}
