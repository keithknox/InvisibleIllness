require 'faker'

FactoryGirl.define do

  factory :person do |f|
    f.name { Faker::Name.name }
    f.story { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 3)}
    f.user_submitted false
  end

  factory :invalid_person, parent: :person do |f|
    f.name nil
    f.story nil
  end


end
