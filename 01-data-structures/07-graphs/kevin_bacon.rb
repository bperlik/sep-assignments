include 'node'

class Graph

  def find_kevin_bacon(actor)
    linking_films = []
    actor.film_actor_hash.each do |title, actor|
      actors.each do |actor|
        if actor == "Kevin_Bacon"
           linking_films.push(title)
        else
          find_kevin_bacon(actor)
        end
      end
    end
    (linking_films.length <= 6 && linking_films.length > 0) ? puts "Six degrees or less: #{linking_films.all}" : puts "Not connected by seven degrees!"
  end
end
