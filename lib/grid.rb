class Grid
  attr_reader :cells, :rows, :columns

  def initialize(rows = 6, columns = 7)
    @rows = rows
    @columns = columns
    @cells = []
    row_number.times { @cells << Array.new(col_number, Cell.new) }
  end
end
