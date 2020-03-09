class Dependent < ActiveRecord::Base
  belongs_to :parent
  validates_length_of :name, :maximum => 100
end
