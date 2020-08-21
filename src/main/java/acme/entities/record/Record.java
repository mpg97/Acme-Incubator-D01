
package acme.entities.record;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.URL;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Record extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	@Column(length = 50)
	private String				title;

	@NotBlank
	@Column(length = 50)
	private String				sector;

	@NotBlank
	@Column(length = 50)
	private String				investorName;

	@NotBlank
	@Column(length = 1024)
	private String				description;

	@NotBlank
	@URL
	private String				web;

	@NotBlank
	@Email
	private String				email;

	@NotNull
	private Boolean				openSource;

	@Range(min = 0, max = 5)
	private Double				stars;

}
