
package acme.entities.debate;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Debate extends DomainEntity {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	private String				title;

	private String				paragraph;

	@Temporal(TemporalType.TIMESTAMP)
	private Date				creation;

	@Temporal(TemporalType.TIMESTAMP)
	private Date				deadline;

	@Email
	private String				email;

	private Integer				lowMoney;

	private Integer				highMoney;

}
