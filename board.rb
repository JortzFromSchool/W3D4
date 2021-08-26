require_relative "tile.rb"
class Board
    def initialize(size = 9)
        @size = size
        @grid = Array.new(@size){Array.new(@size)}
    end

    def populate
        @grid.each do |row|
            row.each_index do |idx|
                if rand(0..4) == 1
                    row[idx] = Tile.new("B")
                else
                    row[idx] = Tile.new(" ")
                end 
            end
        end
    end

end