
class WelcomeController < ApplicationController
  def index
    illnesses_sheet = Roo::Excelx.new("app/controllers/illness.xlsx", extension: :xlsx)
    people_sheet = Roo::Excelx.new("app/controllers/person.xlsx", extension: :xlsx)

    # 4.times do |x|
    #   illness_data = illnesses_sheet.row(x+2)
    #   Illness.create(name:illness_data[0], statistics:illness_data[1], blurb:illness_data[2], quote:illness_data[3], charity_name:illness_data[4], charity_url:illness_data[5])
    # end



  end
end
