import 'package:flutter/material.dart';
import 'package:flutter_app/core/viewmodels/auth/register_viewmodel.dart';
import 'package:flutter_app/ui/views/base_view.dart';
import 'package:flutter_app/ui/widgets/common/base_widget.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends BaseWidget<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(),
        );
      },
    );
  }
}
