package com.example.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.bean.Student;

public interface StudentRepo extends JpaRepository<Student, Long> 
{
	List<Student> findByRoll(int roll);
	List<Student> findByName(String name);
	List<Student> findByAddress(String address);
	List<Student> findByAge(int age);
}
