class Transpose
  def initialize(matrix_str)
    @matrix_str = matrix_str
  end

  def transpose
    matrix_array = matrix_str_to_array(@matrix_str)
    matrix_array = matrix_array_transpose(matrix_array)
    matrix_array_to_str(matrix_array)
  end

  private

  def matrix_str_to_array(matrix_str)
    matrix_str.split("\n").map(&:split)
  end

  def matrix_array_transpose(matrix_array)
    matrix_array.transpose
  end

  def matrix_array_to_str(matrix_array)
    matrix_array.map{ |row| row.join(" ") }.join("\n")  
  end
end
