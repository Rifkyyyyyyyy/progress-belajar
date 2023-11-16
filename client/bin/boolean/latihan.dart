

void main() {
  print(hasPermision('admin', true));
  print(checkPassword('makan ayam Dikantin'));
  print(triangle(5.0, 90.0, 5.0));
  print(isPrima(59));
}

bool latihan1(int num) {
  if (num == 2 % 0) {
    return true;
  } else {
    return false;
  }
}

bool hasPermision(String role, bool isAuth) {
  if (role == 'admin') {
    return isAuth = true;
  } else {
    return isAuth;
  }
}

bool checkPassword(String password) {
  if (password.length >= 8) {
    bool hasUpperCase = false;
    for (var i = 0; i < password.length; i++) {
      if (password[i] == password[i].toUpperCase()) {
        hasUpperCase = true;
        break;
      }
    }
    if (hasUpperCase) {
      return true;
    } else {
      print(
          'Password setidaknya mengandung 8 karakter dengan minimal 1 karakter uppercase');
    }
  } else {
    print(
        'Password setidaknya mengandung 8 karakter dengan minimal 1 karakter uppercase');
  }
  return false;
}

bool triangle(double a, double b, double c) {
  if (a < b + c && b < a + c && c < a + b) {
    return true;
  } else {
    return false;
  }
}

bool isPrima(int num) {
 int i = 5;
  if (num <= 1) {
    return false;
  }
  if (num <= 3) {
    return true;
  }
  if (num % 2 == 0 || num % 3 == 0) {
    return false;
  }
  while (i * 5 <= num) {
    if (num % i == 0 || num % (i + 2) == 0) {
      return false;
    }
    i += 6;
  }
  return true;
}
