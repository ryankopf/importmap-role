module Importmap
  module Role
    class UserScriptsController < ApplicationController
      def index
        combined_importmap = Importmap::Map.new
    
        Dir.glob(Rails.root.join('config/importmaps/*.rb')).each do |file_path|
          role_name = File.basename(file_path, '.rb')
          
          if @current_user.respond_to?("#{role_name}?") && @current_user.public_send("#{role_name}?")
            importmap = Importmap::Map.new
            importmap.instance_eval(File.read(file_path))
            combined_importmap.draw do
              importmap.entries.each { |key, value| pin(key, to: value[:to], preload: value[:preload]) }
            end
          end
        end
    
        render json: combined_importmap.to_json
      end
    end
  end
end