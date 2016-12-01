require 'squib'

Squib::Deck.new(cards: 7, layout: 'layout.yml') do
  background color: '#4b5320'
  deck = csv file: 'unidades.csv'

  text str: deck['Nome'], layout: :Title

  svg file: 'attack.svg', layout: :AttackIcon
  text str: deck['Attack'], layout: :AttackText

  svg file: 'defend.svg', layout: :DefendIcon
  text str: deck['Defend'], layout: :DefendText

  save_png prefix: 'bigger_'
end

#require 'squib'

#Squib::Deck.new(cards: 3, layout: 'layout.yml') do
#  text str: 'Hello, World!'
#  save format: :png
#end
