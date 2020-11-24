class Api::BaseController < ApplicationController

    skip_before_action :verify_authenticity_token
  
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
  
    def not_found
      render json: {
        'errors': [
          {
            'status': '404',
            'title': 'Not Found'
          }
        ]
      }, status: 404
    end
  
  end