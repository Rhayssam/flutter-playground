import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/custom_button/custom_button.dart';

class SectionComunication extends StatelessWidget {
  const SectionComunication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        CustomButton(
          title: 'Badge',
          content:
              'Bloco semelhante a um ícone que transmite conteúdo dinâmico, como contagens ou status. Pode incluir rótulos ou números.',
          onTap: () {},
        ),
        CustomButton(
          title: 'LinearProgressIndicator',
          content:
              'Linha vertical que muda de cor à medida que um processo em andamento (como um carregamento ou envio de um formulário) é concluído.',
          onTap: () {},
        ),
        CustomButton(
          title: 'SnackBar',
          content:
              'Mensagens breves sobre os processos do aplicativo que são exibidas na parte inferior da tela.',
          onTap: () {},
        ),
      ],
    );
  }
}
