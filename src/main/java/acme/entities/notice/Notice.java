
package acme.entities.notice;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.URL;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Notice extends DomainEntity {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	private String				title;

	private String				body;

	@Temporal(TemporalType.TIMESTAMP)
	private Date				creation;

	@Temporal(TemporalType.TIMESTAMP)
	private Date				deadline;

	@URL
	private String				header;

	private String				link;

}
