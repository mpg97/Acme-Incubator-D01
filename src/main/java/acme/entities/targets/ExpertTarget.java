
package acme.entities.targets;

import javax.persistence.Entity;
import javax.persistence.OneToOne;

import acme.entities.challenge.Challenge;
import acme.entities.targets.targetRewards.TargetReward;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class ExpertTarget extends TargetReward {

	private static final long	serialVersionUID	= 1L;

	@OneToOne
	private Challenge			challenge;

}
