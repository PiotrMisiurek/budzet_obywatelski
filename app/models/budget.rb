class Budget < ActiveRecord::Base
  has_many :projects, dependent: :destroy

  def voted_by?(user)
    Vote.exists?(budget_id: self.id, user_id: user.id)
  end

end
