
package acme.features.authenticated.inquiry;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.inquiry.Inquiry;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedInquiryRepository extends AbstractRepository {

	@Query("select t from Inquiry t")
	Collection<Inquiry> findAllInquiry();

	@Query("select t from Inquiry t where t.id = ?1")
	Inquiry findInquiryById(int id);

}
