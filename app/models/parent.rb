class Parent < ActiveRecord::Base
  has_many :dependents
  has_many :gigs
end
