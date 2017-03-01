geheim_getal = (rand * 9).to_i
aantal_keer_raden = 5

# Vraag de naam van de speler
puts("Hoe heet jij?")
naam = gets.chomp
puts("Hallo "+naam+", je mag "+aantal_keer_raden.to_s+" keer raden.")
puts("Het getal is tussen de 0 en de 9.")

# herhaal terwijl "mijn_getal"
while aantal_keer_raden > 0 do
  # vraag de gebruiker om een getal
  puts("Kies een getal")
  getal_van_speler = gets.chomp
  getal_van_speler = getal_van_speler.to_i

  if (getal_van_speler > geheim_getal)
    # Het getal is te hoog. Vertel de speler hoeveel keer nog geraden mag worden.
    puts("Je gekozen getal is te hoog")
    aantal_keer_raden = aantal_keer_raden - 1
    puts("Je mag nog maar "+aantal_keer_raden.to_s+" keer raden.")
  elsif (getal_van_speler < geheim_getal)
    # Het getal is te laag. Vertel de speler hoeveel keer nog geraden mag worden.
    puts("Je gekozen getal is te laag")
    aantal_keer_raden = aantal_keer_raden - 1
    puts("Je mag nog maar "+aantal_keer_raden.to_s+" keer raden.")
  else
    # De speler heeft het goed geraden. Feliciteer de speler.
    puts("Gefeliciteerd! Je hebt het goed!")
    puts("Je hebt gewonnen!")
    # Zet het aantal keer raden op -1. Anders blijf je oneindig lang doorgaan!
    aantal_keer_raden = -1
  end

  if aantal_keer_raden == 0
    puts("Jammer, je hebt verloren")
  end
end

