import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/custom_button/custom_button.dart';
import 'package:flutterplayground/ui/material/viewmodel/material_controller.dart';
import 'package:get/get.dart';

class SectionContainment extends StatelessWidget {
  const SectionContainment({
    super.key,
  });

  MaterialController get _controller => Get.find<MaterialController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        CustomButton(
          title: 'Alert Dialog',
          content:
              'Container flutuante que incentiva os usuários do app a fornecer dados adicionais ou a tomar uma decisão.',
          onTap: _controller.goToAlertDialogPage,
        ),
        CustomButton(
          title: 'Bottom Sheet',
          content: 'Container que ancora o conteúdo suplementar na parte inferior da tela.',
          onTap: _controller.goToBottomSheetPage,
        ),
        CustomButton(
          title: 'Card',
          content:
              'Recipiente para pequenos conteúdos relacionados, exibidos em uma caixa com cantos arredondados e sombra projetada.',
          onTap: _controller.goToCardPage,
        ),
        CustomButton(
          title: 'Divider',
          content: 'Linha fina que agrupa conteúdo em listas e containers.',
          onTap: _controller.goToSnackbarPage,
        ),
        CustomButton(
          title: 'ListTile',
          content:
              'Linha de altura fixa que normalmente contém algum texto bem como um ícone inicial ou final.',
          onTap: _controller.goToListTilePage,
        ),
      ],
    );
  }
}
