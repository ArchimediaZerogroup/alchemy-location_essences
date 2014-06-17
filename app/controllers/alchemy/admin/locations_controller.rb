module Alchemy
  module Admin
    class LocationsController < ResourcesController

      before_action :get_lat_lon, only: [:create, :update]

      def new
        @location = Alchemy::Location.new
      end

      def edit
        @location = Alchemy::Location.find(params[:id])
      end

      private
        def resource_params
          params.require(:location).permit(
            :title, :subtitle, :street, :number, :postal_code,
            :city, :phone, :email, :picture_id, :url,
            :description, :lat, :lon, :category)
        end

        def get_lat_lon
          if resource_params[:lat] == "" || resource_params[:lon] == ""
            street = resource_params[:street]
            number = resource_params[:number]
            postalcode = resource_params[:postal_code]

            uri = URI("http://nominatim.openstreetmap.org/search")
            uri_params = { street: "#{number} #{street}", postalcode: "#{postalcode}", format: "json"}


            uri.query = URI.encode_www_form(uri_params)
            Rails.logger.info("URI:: " + uri.to_s)

            data = Net::HTTP.get(uri)
            parsed = JSON(data)
            if parsed != []
                params[:location][:lat] = parsed[0]["lat"]
                params[:location][:lon] = parsed[0]["lon"]
            else
                params[:location][:lat] = ""
                params[:location][:lon] = ""
            end
          end

        end
    end
  end
end