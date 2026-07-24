# Design Overview — One Piece AD (Lote 1)

Objetivo: fornecer um protótipo jogável com 10 frutas do diabo, comportamentos básicos e exemplos de skills.

Arquitetura:
- behavior_pack/
  - items/ — arquivos .json de itens (frutas)
  - events/ — eventos on_use para aplicar estados (dar item owner)
  - component_groups/ — estados de owner que definem habilidades
  - skills/ — definições de skills (damage, cooldown, animações)
  - scripts/ — protótipos de scripts experimentais (opcional)

- resource_pack/
  - textures/items/ — ícones das frutas
  - models/animations/ — modelos .geo e animações (a adicionar)

Roadmap curto:
- Próximo: adicionar modelos .geo exportados do Blockbench para 3 frutas e animações de ataque.
- Depois: implementar validação servidor-side (BDS) para parry/charged attacks.
