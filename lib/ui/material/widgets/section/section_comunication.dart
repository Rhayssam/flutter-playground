import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/custom_button/custom_button.dart';
import 'package:flutterplayground/ui/material/viewmodel/material_controller.dart';
import 'package:get/get.dart';

class SectionComunication extends StatelessWidget {
  const SectionComunication({
    super.key,
  });

  MaterialController get _controller => Get.find<MaterialController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        CustomButton(
          title: 'Badge',
          content:
              'Bloco semelhante a um ícone que transmite conteúdo dinâmico, como contagens ou status. Pode incluir rótulos ou números.',
          onTap: _controller.goToBadgePage,
        ),
        CustomButton(
          title: 'LinearProgressIndicator',
          content:
              'Linha vertical que muda de cor à medida que um processo em andamento (como um carregamento ou envio de um formulário) é concluído.',
          onTap: _controller.goToLinearProgressIndicatorPage,
        ),
        CustomButton(
          title: 'SnackBar',
          content:
              'Mensagens breves sobre os processos do aplicativo que são exibidas na parte inferior da tela.',
          onTap: _controller.goToSnackbarPage,
        ),
      ],
    );
  }
}
