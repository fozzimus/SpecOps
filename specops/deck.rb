require 'squib'

Squib::Deck.new(cards: 7, layout: %w(hand.yml layout.yml)) do
  background color: '#919191'
  rect layout: 'cut'
#  rect layout: 'safe'
  deck = csv file: 'unidades.csv'
  svg file: deck['arte'], layout: 'arte'

  %w(nome equipamento regra_especial).each do |key|
    text str: deck[key], layout: key
  end

  %w(poder_de_fogo alcance pontos tamanho).each do |key|
    svg file: "#{key.downcase}.svg", layout: "icone#{key}"
    text str: deck[key], layout: key
  end

  save_png prefix: 'unidades_'
  save_pdf file: 'unidades_frente.pdf', trim: 37.5
  showcase file: 'showcase_unidades.png', fill_color: '#0000'
  hand file: 'hand_unidades.png', trim: 37.5, trim_radius: 25, fill_color: '#0000'
end
