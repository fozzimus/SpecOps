require 'squib'

Squib::Deck.new(cards: 5, layout: %w(hand.yml layout_equipamento.yml)) do
  background color: '#919191'
  rect layout: 'cut'
#  rect layout: 'safe'
  deck = csv file: 'armas.csv'
  svg file: deck['arte'], layout: 'arte'

  %w(arma regra_especial).each do |key|
    text str: deck[key], layout: key
  end

  %w(poder_de_fogo alcance pontos).each do |key|
    svg file: "#{key.downcase}.svg", layout: "icone#{key}"
    text str: deck[key], layout: key
  end

  save_png prefix: 'equipamento_'
  save_pdf file: 'equipamento_frente.pdf', trim: 37.5
  showcase file: 'showcase_equipamento.png', fill_color: '#0000'
  hand file: 'hand_equipamento.png', trim: 37.5, trim_radius: 25, fill_color: '#0000'
end
