class PeopleController < ApplicationController
    def index
        @people = Person.all
        render json: @people
    end

    def new
        @person = Person.new
    end

    def create
        @person = Person.new(person_params)
        if @person.save
            @face_part_set = @person.face_part_sets.create
            render json: { person: @person, face_part_set: @face_part_set},status: :created
        else
            render json: @person.errors, status: :unprocessable_entity
        end
    end

    private

    def person_params
        params.require(:person).permit(:name)
    end

end
