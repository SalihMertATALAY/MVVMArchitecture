
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'anasayfa_view_model.dart';

class AnasayfaView extends StatelessWidget {
  const AnasayfaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AnasayfaViewModel>.reactive(
        viewModelBuilder: () => AnasayfaViewModel(),
        disposeViewModel: true,
        onDispose: (model) => model.dispose(),
        onModelReady: (model) => model.onModelReady(),
        builder: (context, model, child) => Scaffold(
            appBar: AppBar(
              title: const Text(
                "Anasayfa",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              backgroundColor: Colors.black,
            ),
            body: model.isBusy
                ? Center(child: const CircularProgressIndicator())
                : ListView.builder(
                    itemBuilder: (context, index) => ListTile(
                      onTap: () =>
                          model.navigateToDetail(model.insanListesi[index]),
                      title: Text(model.insanListesi[index].isim),
                      subtitle: Text(model.insanListesi[index].cinsiyet),
                      leading: const Icon(Icons.person),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                    ),
                    itemCount: model.insanListesi.length,
                  )));
  }
}
