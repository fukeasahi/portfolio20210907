class Caretakers::CleanersController < ApplicationController
    def index
        @caretakers = Caretaker.all
    end
end
