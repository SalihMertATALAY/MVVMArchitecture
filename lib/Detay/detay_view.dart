
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import '../Anasayfa/insan_model.dart';
import 'detay_view_model.dart';

class DetayView extends StatelessWidget {
  DetayView({Key? key, required this.secilenInsan}) : super(key: key);
  Insan secilenInsan;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetayViewModel>.reactive(
        viewModelBuilder: () => DetayViewModel(),
        onModelReady: (model) => model.onMOdalReady(secilen: secilenInsan),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Detay Kısmı",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.black,
              ),
              body: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person,
                      size: 60,
                    ),
                    Text(
                      model.secilenInsan!.isim,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      model.secilenInsan!.cinsiyet,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      model.secilenInsan!.yas.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ));
  }
}
