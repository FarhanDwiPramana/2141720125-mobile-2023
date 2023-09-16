bool bilPrima(int angka) {
  if (angka < 2) {
    return false;
  }
  for (int i = 2; i <= angka / 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  for (int angka = 0; angka <= 201; angka++) {
    if (bilPrima(angka)) {
      print("$angka");
      print("Nama : Farhan Dwi Pramana");
      print("NIM  : 2141720125\n");
    }
  }
}
