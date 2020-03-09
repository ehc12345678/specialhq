class Gig < ActiveRecord::Base
  belongs_to :provider
  has_one :parent
  has_many :dependents
end
