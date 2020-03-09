class Provider < ActiveRecord::Base
  has_many :gigs
  validates_length_of :name, :maximum => 100
end
