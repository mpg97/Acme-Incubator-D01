
package acme.entities.challenge;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import acme.framework.datatypes.Money;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Challenge extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	@Column(length = 50)
	private String				title;

	@NotNull
	private Date				deadline;

	@NotBlank
	@Column(length = 1024)
	private String				description;

	@NotNull
	private Money				rockieReward;

	@NotNull
	private Money				averageReward;

	@NotNull
	private Money				expertReward;

	@NotBlank
	@Column(length = 50)
	private String				rockieGoal;

	@NotBlank
	@Column(length = 50)
	private String				averageGoal;

	@NotBlank
	@Column(length = 50)
	private String				expertGoal;

}
