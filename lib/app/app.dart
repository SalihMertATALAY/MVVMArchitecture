
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../Anasayfa/anasayfa_view.dart';
import '../Detay/detay_view.dart';
import '../Service/genel_kisi_bilgisi_servis.dart';
import '../main.dart';

@StackedApp(routes: [
  MaterialRoute(page: MyHomePage, initial: true),
  MaterialRoute(page: AnasayfaView),
  MaterialRoute(page: DetayView),


], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: GenelKisiBilgisi),

], logger: StackedLogger())
class App {}
