class Screen
	
	attr_accessor :background_color
	
	BLACK = [0,0,0]
	RED = [255,0,0]
		
  def initialize(rows,cols,background_color=BLACK)
    @screen = [ [false] * cols ] * rows 
    @background_color = background_color
  end

	def

	def blit(glyph, row, col, color=RED) 
    @glyphs[c]
  end


end
