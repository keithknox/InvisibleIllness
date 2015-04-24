class Person < ActiveRecord::Base
  belongs_to :illness

  validates :name,
    presence: true,
    length: { maximum: 50, minimum: 3 }

  validates :story,
    presence: true

end
