import 'package:daniel_engage/ui/startup/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pruebas'),
      ),
      body: Container(
        child: ViewModelBuilder<StartupViewModel>.nonReactive(
          builder: (context, model, child) => Column(
            children: [
              model.isBusy
                  ? CircularProgressIndicator()
                  : Center(
                      child: Text(model.title),
                    ),
              TextInput(),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: model.navigateToLogin,
                  child: Text('Vamonoo'),
                ),
              ),
            ],
          ),
          viewModelBuilder: () => StartupViewModel(),
          onModelReady: (model) => model.setTitle('value'),
        ),
      ),
    );
  }
}

class TextInput extends HookViewModelWidget<StartupViewModel> {
  @override
  Widget buildViewModelWidget(BuildContext context, StartupViewModel model) {
    final TextEditingController text =
        useTextEditingController(text: model.title);

    return TextFormField(
      controller: text,
      onChanged: model.setTitle,
    );
  }
}
