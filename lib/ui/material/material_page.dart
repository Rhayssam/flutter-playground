import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterplayground/ui/core/widgets/custom_button/custom_button.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './material_controller.dart';

class MaterialPage extends GetView<MaterialController> {
  const MaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('Material Components'),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              spacing: 15,
              children: [
                Text(
                  'Ações',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                CustomButton(
                  title: 'Botões comuns',
                  content:
                      'Botões Clicáveis que iniciam uma ação, como enviar um e-mail, compartilhar um documento ou curtir um comentário.',
                  onTap: () {},
                ),
                CustomButton(
                  title: 'Botão de ação flutuante',
                  content:
                      'Bloco clicável contendo um ícone que mantém uma ação importante sempre ao alcance.',
                  onTap: () {},
                ),
                CustomButton(
                  title: 'Botão de ação flutuante estendido',
                  content:
                      'Bloco clicável que aciona uma ação. Esses blocos maiores podem exibir um rótulo de texto e oferecem uma área de interação maior.',
                  onTap: () {},
                ),
                CustomButton(
                  title: 'Botão de ícone',
                  content:
                      'Ícones clicáveis para incentivar os usuários do aplicativo a realizar ações complementares.',
                  onTap: () {},
                ),
                CustomButton(
                  title: 'Botão segmentado',
                  content:
                      'Blocos clicáveis, selecionáveis individualmente ou em conjunto, para ajudar os usuários a escolher opções, alterar entre visualizações ou classificar elementos.',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
