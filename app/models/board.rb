class Board < ApplicationRecord
  has_many :lists

  def by_name
    self.order(:name)
  end
end
