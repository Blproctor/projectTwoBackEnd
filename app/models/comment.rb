class Comment < ApplicationRecord
  include Authentication
  belongs_to :user
  belongs_to :medical_post
end
