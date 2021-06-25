void main(List<String> arguments) {
  Hero a = Hero(10);
  Hero b = Hero(10);
  // print((a + b).power); // ini mencetak angka 20 gabungan dari dua hero

  print(a == b); // hasilnya false karena 2 hero yang berbeda

  // Hero c = Hero(30);
  // Hero d = Hero(20);

  // print((c - d).power);

  print((a + 22).power);

  print(a > b);
}

class Hero {
  final int power;

  Hero(this.power);

  // format 1
  // Hero operator +(Hero other) {
  //   return Hero(power + other.power);
  // }

  // format 2
  Hero operator +(var other) {
    // dicek apakah other adalah hero?
    if (other is Hero) {
      // maka return ke Hero
      return Hero(power + other.power);
      // dicek apakah other adalah integer
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

/* bisa dengan cara singkat
@override
return (other.power==power); 
lebih singkat dari if(other.power==power) return true; else return false;

 * 
 * 
 */

  // Hero operator -(Hero akhor) {
  //   return Hero(power - akhor.power);
  // }

  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (other.power == power) {
        return true;
      }
    }
    return false;
  }

  bool operator >(var other) {
    if (other is Hero) {
      if (power > other.power) {
        return true;
      }
    }
    return false;
  }
}
