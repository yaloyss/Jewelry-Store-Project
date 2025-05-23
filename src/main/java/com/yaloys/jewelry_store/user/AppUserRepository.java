package com.yaloys.jewelry_store.data.user;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@Repository
public interface AppUserRepository extends CrudRepository<AppUser, Long>
{
        Optional<AppUser> findByUserName(String userName);
}
