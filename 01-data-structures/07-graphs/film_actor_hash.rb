def fill_film_hash(actor_hash)
	film_hash = Hash.new
	film_hash["A Few Good Men"] = [ jack_nicholson, tom_cruise, demi_moore, kiefer_sutherland, kevin_bacon, kevin_pollack, james_marshall ]
  film_hash["Apollo 13"] = [kevin_bacon, tom_hanks, bill_paxton, gary_sinis ]
  film_hash["Deliverance"] = [jon_voight, burt_reynolds, ronny_cox, ned_beatty ]
	film_hash["Edge of Tomorrow"] = [tom_cruise, emily_blunt, bill_paxton, brenden gleeson ]
	film_hash["Flatliners"] = [kevin_bacon, kiefer_sutherland, julia_roberts, william_baldwin ]
	film_hash["Footloose"] = [kevin_bacon, lori_singer, dianne_west, john_lithgow ]
  film_hash["Independence Day"] = [will_smith, jeff_goldblum, randy_quaid, bill_pullman, mary_mcdonnell, judd_hirsh, kevin_ash ]
	film_hash["Jurassic Park: The Lost World"] = [julianne_moore, jeff_goldblum, pete_postlewaite, arliss_howard ]
	film_hash["Magnolia"] = [julianne_moore, tom_cruise, william_macy, philip_hoffman ]
	film_hash["Mission: Impossible - Rogue Nation"] = [tom_cruise, jeremy_renner, simon_peg, rebecca_ferguson ]
  film_hash["Ocean's Eleven"] = [ george_clooney, brad_pitt, matt_damon, andy_garcia, julia_roberts, bernie_mac ]
  film_hash["Planes, Trains, and Automobiles"] = [ kevin_bacon, kevin_ash, steve_martin, john_candy, michael mckean ]
	film_hash["The Big Lebowski"] = [jeff_bridges, john_goodman, julianne_moore, steve_buscemi ]
  film_hash["The Departed"] = [leonardo_dicaprio, matt_damon, jack_nicholson, martin_sheen, alec_baldwin, gurdeep_singh, vera_farmiga ]
	film_hash["True Grit"] = [ jeff_bridges, matt_damon, josh_brolin, hailee_steinfield ]

	film_hash.each { |film, actors|i do
		# puts "#{film} #{actors}"
		actors.each { |actor| actor_hash[actor].film_actor_hash[film] = [] }
	}
  end

end

