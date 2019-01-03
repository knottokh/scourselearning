module Spree
  module Admin
    class CourseimagesController < ResourceController
      before_action :load_edit_data, except: :index
      before_action :load_index_data, only: :index

      create.before :set_viewable
      update.before :set_viewable

      private

      def location_after_destroy
        admin_course_courseimages_url(@course)
      end

      def location_after_save
        admin_course_courseimages_url(@course)
      end

      def load_index_data
        @course = Spree::Course.friendly.includes(*variant_index_includes).find(params[:course_id])
        #@course = Spree::Course.find(params[:course_id])
      end

      def load_edit_data
        @course = Spree::Course.friendly.includes(*variant_edit_includes).find(params[:course_id])
        @variants = @course.variants.map do |variant|
          [variant.sku_and_options_text, variant.id]
        end
        masterid = @course.master.nil? ? @course.id : @course.master.id
        @variants.insert(0, [Spree.t(:all), masterid])
        #@testid = masterid;
      end

      def set_viewable
        @courseimage.viewable_type = 'Spree::Variant'
        @courseimage.viewable_id = params[:courseimage][:viewable_id]
      end

      def variant_index_includes
        [
          variant_images: [viewable: { option_values: :option_type }]
        ]
      end

      def variant_edit_includes
        [
          variants_including_master: { option_values: :option_type, courseimages: :viewable }
        ]
      end
    end
  end
end