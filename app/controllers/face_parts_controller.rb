class FacePartsController < ActionController::API
    def index
        @face_parts = FacePart.all
        render json: @face_parts
    end
end
