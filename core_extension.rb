class Float
  RADIAN_PER_DEGREE = Math::PI / 180.0

  def to_radian
    self * RADIAN_PER_DEGREE
  end
end

class Fixnum
  RADIAN_PER_DEGREE = Math::PI / 180.0

  def to_radian
    self * RADIAN_PER_DEGREE
  end
end