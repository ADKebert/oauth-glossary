class Term < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def owned_by_user?(asking_user)
    user == asking_user
  end
end
