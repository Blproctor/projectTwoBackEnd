class MedicalPost < ApplicationRecord
  include Authentication
  belongs_to :user
  has_many :comments
end
