class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :make_admin_if_first

  has_many :projects

  private

  def make_admin_if_first
    if User.count == 0
      self.admin = 1
    end
  end
end
