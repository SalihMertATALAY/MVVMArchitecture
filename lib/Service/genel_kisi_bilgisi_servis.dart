import 'package:stacked/stacked.dart';

class GenelKisiBilgisi with ReactiveServiceMixin {
  //1
  GenelKisiBilgisi() {
    //3
    listenToReactiveValues([_kisiSayisi]);
  }

  //2
  ReactiveValue<int> _kisiSayisi = ReactiveValue<int>(0);
  int get postCount => _kisiSayisi.value;

  void kisiSayisiArttir() {
    _kisiSayisi.value++;
  }

  void kisiSayisiAzalt() {
    _kisiSayisi.value = 0;
  }
}
