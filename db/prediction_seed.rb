
def find_similar_places
	Landslide.all.map(&:latitude).sort.each do |x|
		Landslide.all.map(&:longitude).sort.each do |y|
			if Landslide.where(:latitude => x.round(2)...x.round(2) + 0.01).where(:longitude => y.round(2)...y.round(2) + 0.01).count > 1
				print x, y
			end
		end
	end
end



def find_similar_places
	Landslide.all.map(&:latitude).sort.each do |x|
			Landslide.where(:latitude => x.round(2)...x.round(2) + 0.01) 			
		end
	end
	
end