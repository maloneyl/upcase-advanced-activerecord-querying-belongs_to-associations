class Region < ActiveRecord::Base
  has_many :locations

  def self.with_name(name)
    where(name: name)
  end
end
