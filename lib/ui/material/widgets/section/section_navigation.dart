import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/custom_button/custom_button.dart';
import 'package:flutterplayground/ui/material/viewmodel/material_controller.dart';
import 'package:get/get.dart';

class SectionNavigation extends StatelessWidget {
  const SectionNavigation({
    super.key,
  });
  MaterialController get _controller => Get.find<MaterialController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        CustomButton(
          title: 'AppBar',
          content: 'Container que exibe conteúdo e ações na parte superior da tela.',
          onTap: _controller.goToAppBarPage,
        ),
        CustomButton(
          title: 'BottomAppBarPage',
          content:
              'Container que exibe a navegação e as principais ações na parte inferior da tela.',
          onTap: _controller.goToBottomAppBarPage,
        ),
        CustomButton(
          title: 'BottomAppBarPage',
          content:
              'Container persistente que permite alternar entre os destinos primários em um aplicativo.',
          onTap: _controller.goToNavigationBarPage,
        ),
      ],
    );
  }
}
