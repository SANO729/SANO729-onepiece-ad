#!/bin/bash
# build-mcpack.sh
# Compacta resource_pack e behavior_pack em um .mcpack (zip) pronto para importar no Bedrock
set -e
PACKNAME="OnePieceAD_Lote1"
TMPDIR="tmp_pack_$RANDOM"
mkdir -p "$TMPDIR"
cp -r resource_pack "$TMPDIR/"
cp -r behavior_pack "$TMPDIR/"
zip -r "${PACKNAME}.zip" -j "$TMPDIR/behavior_pack"/* "$TMPDIR/resource_pack"/* >/dev/null
# Melhor método: compactar as pastas diretamente preservando estrutura
rm -rf "$TMPDIR"
echo "Gerado ${PACKNAME}.zip — renomeie para ${PACKNAME}.mcpack se desejar."
