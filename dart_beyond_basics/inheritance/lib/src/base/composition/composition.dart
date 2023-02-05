class Student {
  Student(
    this.roles,
  );

  final List<StudentRole> roles;

  Student onAddRole(StudentRole role) {
    final List<StudentRole> updatedRoles = [...roles]..add(role);

    final Student updatedStudent = Student(updatedRoles);

// only returning students to test creating new object - we dont have to - we can modify current Student
    return updatedStudent;
  }
}

enum StudentRole {
  juniorStudent,
  seniorStudent,
  bandMember,
  dramaMember,
}
