class Property < ApplicationRecord
  has_many :nearest_stations
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true
  validates :property_name, presence:true, length:{ maximum: 30 }
  validates :rent,  presence:true, length:{ maximum: 10 }
  validates :address,  presence:true, length:{ maximum: 40 }
  validates :age,  presence:true, length:{ maximum: 3 }
end
