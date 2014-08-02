class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable #, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :full_name

  def ==(user)
    self.email == user.email && self.id == user.id
  end
end
