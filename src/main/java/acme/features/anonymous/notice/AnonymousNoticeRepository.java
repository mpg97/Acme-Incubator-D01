
package acme.features.anonymous.notice;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.notice.Notice;
import acme.framework.repositories.AbstractRepository;

public interface AnonymousNoticeRepository extends AbstractRepository {

	@Query("select n from Notice n")
	Collection<Notice> findAllNotices();

	@Query("select n from Notice n where n.id = ?1")
	Notice findNoticeById(int id);
}
