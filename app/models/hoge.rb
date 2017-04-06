class Hoge < ApplicationRecord
  def initialize(a)
    @poyo = a
  end

  def get_poyo
    @poyo
  end
end
