import 'package:stacked/stacked.dart';

import '../Anasayfa/insan_model.dart';

class DetayViewModel extends BaseViewModel {
  Insan? secilenInsan;

  onMOdalReady({required Insan secilen}) {
    secilenInsan = secilen;
  }
}
