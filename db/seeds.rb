Game.delete_all

game_attributes = [
  { name: "Marvel Midnight Suns", genre: "Tactical Action", price: 400 },
  { name: "God of War: Ragnarok", genre: "Action Adventure", price: 600 },
  { name: "PUBG", genre: "Battle Royale", price: 0 }
]

Game.create!(game_attributes)

<<-SQL
  SELECT * FROM games
  WHERE games.price > #{price};
SQL