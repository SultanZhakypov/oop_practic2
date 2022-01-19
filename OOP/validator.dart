import 'dart:io';

// 

void main(){

Validator acc = new Validator();
acc.isEmail();
acc.isPhone();
acc.isDate();

}

class Validator {

  isEmail(){
    stdout.write("Email :");
    var x = stdin.readLineSync()!;
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@g[a-zA-Z0-9]+.com").hasMatch(x);
    print(emailValid);
  }


  isDomain(){
    var x = stdin.readLineSync()!;
    bool emailValid = RegExp(r'.com').hasMatch(x);
    print(emailValid);
  }


  isDate(){
    stdout.write('Дата :');
    var yearr = int.parse(stdin.readLineSync()!);
    var d = (DateTime.now().year - yearr) >= 18;
    print(d);
  }


  isPhone(){
    stdout.write("Номер :");
    var x = stdin.readLineSync()!;

    if (x.length == 13) {
      bool emailValid = RegExp(r'^[+996]+55').hasMatch(x);
      print(emailValid);
    }
    else{
      print('Неверный номер');
    }
  }
}