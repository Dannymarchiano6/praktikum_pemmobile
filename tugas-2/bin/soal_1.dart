class Hewan {
  double berat;

  Hewan(this.berat);
}

class Mobil {
  double kapasitasTotal;
  List<Hewan> muatan = [];

  Mobil(this.kapasitasTotal);

  void tambahMuatan(Hewan hewan) {
    if (hitungTotalMuatan() + hewan.berat <= kapasitasTotal) {
      muatan.add(hewan);
      print("Hewan dengan berat ${hewan.berat} ditambahkan ke muatan.");
    } else {
      print("Kapasitas muatan tidak mencukupi untuk hewan ini.");
    }
  }

  double hitungTotalMuatan() {
    double total = 0.0;
    for (var hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }
}

void main() {
  var mobil = Mobil(1000.0);
  var hewan1 = Hewan(300.0);
  var hewan2 = Hewan(500.0);

  mobil.tambahMuatan(hewan1);
  mobil.tambahMuatan(hewan2);

  print("Total muatan dalam mobil: ${mobil.hitungTotalMuatan()}");
}
