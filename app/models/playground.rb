class Playground < ActiveRecord::Base
  belongs_to :user
# attr_accessible :image, :image1

# mount_uploader :image, ImageUploader
# mount_uploader :image1, ImageUploader
  # SPORTS = ['Football','Cricket','Field Hockey','Tennis','Volleyball','Table Tennis','Baseball','Golf','American Football']

  acts_as_gmappable :process_geocoding => false
  
  #validates_inclusion_of :sport, :in => Playground::SPORTS
  validates_presence_of :name
  validates_presence_of :address
  

  # *** Server-side reverse geocoding, not for this example!
  #reverse_geocoded_by :latitude, :longitude do |obj,results|
  #  if geo = results.first
  #    obj.city    = geo.city
  #    obj.postal_code = geo.postal_code
  #    obj.country = geo.country_code
  #    obj.route = geo.address
  #  end
  #end
    
  #after_validation :reverse_geocode  

  #def address=(address)
  #end
    
end
