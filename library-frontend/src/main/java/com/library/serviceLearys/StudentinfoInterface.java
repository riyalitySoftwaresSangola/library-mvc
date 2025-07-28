package com.library.serviceLearys;

import java.util.List;

import com.library.model.StudentInfoDto;
import com.library.model.StudentResponceDto;

public interface StudentinfoInterface {

	StudentInfoDto Studentinfo(StudentInfoDto studentInfoDto);

	List<StudentResponceDto> getallStudent();

	StudentResponceDto getid(int id);

	StudentResponceDto updateStudent(StudentResponceDto studentDto);

	void softDeleteStudent(int id);

}
