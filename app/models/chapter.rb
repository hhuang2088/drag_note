class Chapter < ActiveRecord::Base
  belongs_to :user
  has_many :notes
  has_many :searches
end
