package com.framework.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.framework.jpa.UsersEntity;

@Repository
public interface UserRepository extends JpaRepository<UsersEntity, String>  {
	 public List<UsersEntity> findByUidAndPwd(String users,String password);
	 public List<UsersEntity> findByUid(String users);
	 
}
