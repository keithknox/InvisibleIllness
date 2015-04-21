class IllnessesController < ApplicationController

def index
@illnesses = Illness.all
end


end
