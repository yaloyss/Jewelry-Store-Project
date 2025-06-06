package com.yaloys.jewelry_store.data;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeRepository extends CrudRepository <Employee, Long> {

    List<Employee> findByFullNameContainingIgnoreCase(String name);
}
