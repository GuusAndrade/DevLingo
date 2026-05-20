import 'package:devlingo/src/core/di/injection.dart';
import 'package:devlingo/src/modules/_template/presentation/blocs/template_cubit.dart';
import 'package:devlingo/src/modules/_template/presentation/blocs/template_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TemplatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TemplateCubit>()..loadById('demo'),
      child: const _TemplateView(),
    );
  }
}

class _TemplateView extends StatelessWidget {
  const _TemplateView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('...')),
      body: BlocBuilder<TemplateCubit, TemplateState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const CircularProgressIndicator(),
            loaded: (template) => const Text('template name'),
            failure: (failure) => const Text('Error'),
          );
        },
      ),
    );
  }
}
