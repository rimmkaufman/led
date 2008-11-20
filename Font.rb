class Font

  FONTDIR = Dir.getwd + '/fonts/'

  attr_reader :char_height, :char_max_width, :num_chars

  def initialize(name)
    @glyphs = {}
    @width = {}
    File.open(FONTDIR + name) do |f|
      lines = f.readlines.reject { |line| line.match(/^!!/)}.map {|line| line.chomp}
      @char_height =  lines.shift.to_i
      @max_char_width = lines.shift.to_i
      @num_chars = lines.shift.to_i
      for i in (1 .. @num_chars) do
        char = lines.shift
        @glyphs[char] = []
        @width[char] =  lines.shift.to_i
        for j in (0 .. @char_height-1) do
          line = lines.shift
          @glyphs[char][j] = (0.. @width[char]-1).map {|k| line[k] == ?#}
        end
      end
    end
  end

  def glyph(c)
    @glyphs[c]
  end

  def width(c)
    @width[c]
  end

end
