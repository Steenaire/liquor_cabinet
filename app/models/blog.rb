class Blog < ApplicationRecord
  paginates_per 2

  belongs_to :user

  has_many :comments
end
