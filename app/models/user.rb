class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :make_super_user_if_first

  private

  def make_super_user_if_first
    if User.count == 0
      self.super_user = 1
    end
  end
end
