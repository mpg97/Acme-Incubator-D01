
package acme.entities.debate;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import acme.framework.datatypes.Money;
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

	@NotBlank
	@Column(length = 50)
	private String				title;

	@NotBlank
	@Column(length = 1024)
	private String				paragraph;

	@NotNull
	@Temporal(TemporalType.TIMESTAMP)
	private Date				creation;

	@NotNull
	@Temporal(TemporalType.TIMESTAMP)
	private Date				deadline;

	@NotBlank
	@Email
	private String				email;

	@NotNull
	private Money				lowMoney;

	@NotNull
	private Money				highMoney;

}
