import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/custom_button/custom_button.dart';

class SectionActions extends StatelessWidget {
  const SectionActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        CustomButton(
          title: 'Common buttons',
          content:
              'Botões Clicáveis que iniciam uma ação, como enviar um e-mail, compartilhar um documento ou curtir um comentário.',
          onTap: () {},
        ),
        CustomButton(
          title: 'FloatingActionButton',
          content:
              'Bloco clicável contendo um ícone que mantém uma ação importante sempre ao alcance.',
          onTap: () {},
        ),
        CustomButton(
          title: 'Extended FloatingActionButton',
          content:
              'Bloco clicável que aciona uma ação. Esses blocos maiores podem exibir um rótulo de texto e oferecem uma área de interação maior.',
          onTap: () {},
        ),
        CustomButton(
          title: 'IconButton',
          content:
              'Ícones clicáveis para incentivar os usuários do aplicativo a realizar ações complementares.',
          onTap: () {},
        ),
        CustomButton(
          title: 'SegmentedButton',
          content:
              'Blocos clicáveis, selecionáveis individualmente ou em conjunto, para ajudar os usuários a escolher opções, alterar entre visualizações ou classificar elementos.',
          onTap: () {},
        ),
      ],
    );
  }
}
