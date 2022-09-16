import 'package:mvvm_project/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../Service/genel_kisi_bilgisi_servis.dart';
import '../app/app.locator.dart';
import 'insan_model.dart';

class AnasayfaViewModel extends ReactiveViewModel {
  List<Insan> insanListesi = [];
  final _navigationService = locator<NavigationService>();
  navigateToDetail(Insan secilenInsan) {
    // // Bir yere navigate Etmek için kullanılır
    // _navigationService.navigateTo(Routes.detayView);
    // // routeları poplamak için kullanılır
    // _navigationService.popRepeated(2);
    // // geçmişteki bir route akadar poplamak için kullanılır
    // _navigationService.pushNamedAndRemoveUntil(Routes.myHomePage);

    _navigationService.navigateTo(Routes.detayView, arguments: DetayViewArguments(secilenInsan: secilenInsan));

  }

  void insanEkle({
    required String isim,
    required int yas,
    required String cinsiyet,
  }) {
    insanListesi.add(Insan(isim: isim, cinsiyet: cinsiyet, yas: yas));
    notifyListeners();
  }

  void sonInsaniSil() {
    insanListesi.removeLast();
  }

  onModelReady() async {
    // Await fonkisyonu meşgul eden bir fonksiyondur
    setBusy(true);
    await Future.delayed(Duration(seconds: 2));
    setBusy(false);
    insanListesi = [
      Insan(isim: "Salih", cinsiyet: "Erkek", yas: 22),
      Insan(isim: "Berkan", cinsiyet: "Erkek", yas: 19),
      Insan(isim: "Ahmet", cinsiyet: "Erkek", yas: 54),
      Insan(isim: "Cansu", cinsiyet: "Kadın", yas: 32),
    ];
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [GenelKisiBilgisi()];
}