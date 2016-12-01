require 'squib'

Squib::Deck.new(cards: 7, layout: 'layout.yml') do
  background color: '#4b5320'
  deck = csv file: 'unidades.csv'

  text str: deck['Nome'], layout: :Title

  svg file: 'attack.svg', layout: :IconeEquipamento
  text str: deck['Equipamento'], layout: :TextoEquipamento

  svg file: 'defend.svg', layout: :IconeRegraEspecial
  text str: deck['Regra Especial'], layout: :TextoRegraEspecial

  #svg file: 'pontos.svg', layout: :IconePontos
  text str: deck['Pontos'], layout: :TextoPontos

  #svg file: 'defend.svg', layout: :DefendIcon
  #text str: deck['Pontos'], layout: :DefendText

  save_png prefix: 'bigger_'
end

#require 'squib'

#Squib::Deck.new(cards: 3, layout: 'layout.yml') do
#  text str: 'Hello, World!'
#  save format: :png
#end
