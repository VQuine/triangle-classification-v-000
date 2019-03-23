class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three

    if side_one == 0 && side_two == 0 && side_three == 0
      raise TriangleError
    else side_one < 0 || side_two < 0 || side_three < 0
      raise TriangleError
    end

  end

  def kind



    if ( side_one == side_two ) && ( side_one == side_three )
        :equilateral
      elsif ( side_one == side_two && side_one != side_three)  || ( side_one == side_three && side_one != side_two ) || ( side_two == side_three && side_two != side_one )
        :isosceles
      else  ( side_one != side_two ) && ( side_one != side_three ) && ( side_two != side_three )
        :scalene
    end

  end

  ##################################################
    class TriangleError < StandardError

    end
  ##################################################


end
