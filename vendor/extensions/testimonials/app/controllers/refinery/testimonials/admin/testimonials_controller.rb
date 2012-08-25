module Refinery
  module Testimonials
    module Admin
      class TestimonialsController < ::Refinery::AdminController

		crudify :'refinery/testimonials/testimonial', :xhr_paging => true,
                                          :order => "date DESC",
                                          :sortable => false

      end
    end
  end
end
