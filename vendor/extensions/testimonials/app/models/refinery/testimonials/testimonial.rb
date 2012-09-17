module Refinery
  module Testimonials
    class Testimonial < Refinery::Core::BaseModel
      self.table_name = 'refinery_testimonials'

      attr_accessible :title, :date, :area, :location, :photo_id, :text, :position

      acts_as_indexed :fields => [:title, :area, :location, :text]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
	  
    end
  end
end
