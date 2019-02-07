class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people

  def self.in_region(region)
    joins(:region).merge(Region.with_name(region))
  end
end
