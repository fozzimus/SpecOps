require 'squib'

Squib::Deck.new(cards: 7, layout: 'layout.yml') do
  #background color: '#4b5320'
  # ^ military green ^
  background color: '#919191'
#  ^ grey ^

  deck = csv file: 'unidades.csv'

  text str: deck['Nome'], layout: :Title

  svg file: 'attack.svg', layout: :IconeEquipamento
  text str: deck['Equipamento'], layout: :TextoEquipamento

# ---------------
#  svg file: 'defend.svg', layout: :IconeEquipamento
#  text str: deck['Morteiro'], layout: :TextoEquipamento
#----------------

  svg file: 'defend.svg', layout: :IconeRegraEspecial
  text str: deck['Regra Especial'], layout: :TextoRegraEspecial

  #svg file: 'pontos.svg', layout: :IconePontos
  text str: deck['Pontos'], layout: :TextoPontos

  save_png prefix: 'unidades'
  save_pdf trim: 37.5
end
