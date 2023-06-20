import 'package:flutter/material.dart';
import 'package:flutter_app/core/viewmodels/base_viewmodel.dart';
import 'package:flutter_app/locator.dart';
import 'package:provider/provider.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child) builder;
  final Function(T)? onModelReady;
  final Function(T)? onModelDispose;
  const BaseView({
    super.key,
    required this.builder,
    this.onModelReady,
    this.onModelDispose,
  });

  @override
  State<BaseView<T>> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  T model = locator<T>();

  @override
  void initState() {
    if (widget.onModelReady != null) widget.onModelReady!(model);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.onModelDispose != null) widget.onModelDispose!(model);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => model,
      child: Consumer<T>(builder: widget.builder),
    );
  }
}
