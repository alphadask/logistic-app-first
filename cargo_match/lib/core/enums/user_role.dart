enum UserRole { driver, supplier }

extension UserRoleX on UserRole {
  String get label => this == UserRole.driver ? 'Sürücü' : 'Tedarikçi';
}
