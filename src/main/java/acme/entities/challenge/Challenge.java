
package acme.entities.challenge;

import java.util.Date;

import javax.persistence.Entity;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Challenge extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	private String				title;

	private Date				deadline;

	private String				description;

	private String				goalReward;

}
