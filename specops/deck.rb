require 'squib'

Squib::Deck.new(cards: 7, layout: %w(hand.yml layout.yml)) do
  background color: '#919191'
  deck = csv file: 'unidades.csv'
  svg file: deck['arte'], layout: 'arte'

#  %w(Title Description Snark).each do |key|
#    text str: deck[key], layout: key
#  end

  %w(nome equipamento regra_especial).each do |key|
    text str: deck[key], layout: key
  end

  %w(poder_de_fogo alcance pontos tamanho).each do |key|
    svg file: "#{key.downcase}.svg", layout: "icone#{key}"
    text str: deck[key], layout: key
  end

#  %w(Attack Defend Health).each do |key|
#    svg file: "#{key.downcase}.svg", layout: "#{key}Icon"
#    text str: deck[key], layout: key
#  end

  save_png prefix: 'unidades_'
  showcase file: 'showcase.png', fill_color: '#0000'
  hand file: 'hand.png', trim: 37.5, trim_radius: 25, fill_color: '#0000'
end

#Squib::Deck.new(cards: 10, layout: %w(hand.yml, layout.yml)) do
#  background color: '#919191'
#  deck = csv file: 'armas.csv'
#  svg file: deck['Arte'], lauout: 'Arte'

#  # CÓDIGO PARA GERAÇÃO DE CARTAS DE ARMAS

#end
