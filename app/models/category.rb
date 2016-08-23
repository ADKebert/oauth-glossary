class Category < ApplicationRecord
  has_many :terms
  belongs_to :user

  def owned_by_user?(asking_user)
    user == asking_user
  end
end
