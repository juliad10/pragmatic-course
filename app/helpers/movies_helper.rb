module MoviesHelper
	def format_total_gross(movie)
		if movie.flop?
			content_tag(:strong, 'Flop!')
			# this also works: "<strong>Flop!</strong>".html_safe
		else
			number_to_currency(movie.total_gross)
		end
	end
	def image_for(movie)
	  if movie.image_file_name.blank?
	    #image_tag('adele.jpg')
	  else
	    image_tag(movie.image_file_name)
	  end
	end
end
