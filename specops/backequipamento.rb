require 'squib'

Squib::Deck.new(cards: 8, layout: "hand.yml") do
  background color: '#919191'
  rect layout: 'cut'

  svg file: "allied-star.svg",
      width: 600, height: 600,
      x: 110, y: 200 # icons adapted from game-icons.net


#      save_png prefix: 'back_'
      save_pdf file: 'back_equipamento.pdf', trim: 37.5
      showcase file: 'showcase.png', fill_color: '#0000'
      hand file: 'hand.png', trim: 37.5, trim_radius: 25, fill_color: '#0000'

end
