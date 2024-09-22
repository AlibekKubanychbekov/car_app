abstract class AppValidators {
  static String? emailValidator(String? value) {
    if ((value?.length ?? 0) < 10) {
      return 'Минимальная длина почты 10 символов';
    }
    if (!(value?.contains('@') ?? false)) {
      return ('Отсутствует @');
    }
    if (!(RegExp(r'^[A-Za-z0-9@]+$').hasMatch(value ?? ''))) {
      return 'Знаки !,#,%,^,&,*, запрещены';
    }

    return null;
  }

  static String? passwordValidator(String? value) {
    if ((value?.length ?? 0) < 8) {
      return 'Минимальная длина пароля 8 символов';
    }
    if (!(RegExp(r'^[A-Za-z0-9.]+$').hasMatch(value ?? ''))) {
      return 'Знаки !,@,#,%,^,&,*, запрещены';
    }

    return null;
  }
}
