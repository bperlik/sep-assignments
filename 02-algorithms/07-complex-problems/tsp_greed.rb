# This method finds a heuristic solution to
# the traveling salesman problem

class City
  attr_accessor :name
  attr_accessor :neighbors
  attr_accessor :visited

  def initialize(name)
    @name = name
    @neighbors = []
    @visited = false
  end
end

# DEF nearest possible neighbor(graph_of_cities, current_city)
def nearest_possible_neighbor(cities, starting_city)
  current_city = starting_city
  route = [starting_city.name]

# WHILE current_city.visited IS FALSE
  while current_city.visited == nil
    neighbor_cities = []
#   SET neighbor_cities TO current_city.neighbors
    for city in current_city.neighbors
      neighbor_cities.push(city) if cities.include? city[:city]
    end

#   SET next_city = neighbor_cities[0]
    for city in neighbor_cities
#     IF next_city.visited IS FALSE
      if city[:city].visited == nil
#       ASSIGN current_neighbor TO next_city
        next_city = city
        break
      end
    end

#   IF current_city is next_city.city (eof) then break
    break if current_city == next_city[:city]

#   FOR current_neighbor IN neighbor_cities
    for current_neighbor in neighbor_cities
#     IF current_neighbor.distance < next_city.distance
      if current_neighbor[:distance] < next_city[:distance] && !current_neighbor[:city].visited
#       ASSIGN next_city TO current_city
        next_city = current_neighbor
      end
    end

#   SET current_city.visited to TRUE
    current_city.visited = true
#   SET current_city to next_city.city
    current_city = next_city[:city]
#   ADD current_city.name to end of route
    route.push(current_city.name)
  end

# return finished route
  route
end
