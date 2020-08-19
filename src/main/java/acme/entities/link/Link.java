
package acme.entities.link;

import javax.persistence.Entity;

import org.hibernate.validator.constraints.URL;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Link extends DomainEntity {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	@URL
	private String				link;

}
