class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles
  has_many :activities

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :cell_phone, :cyber, :email, :password, :password_confirmation, :remember_me, :role_ids

  def role?(role)
    return !!self.roles.find_by_name(role.to_s)
  end



end
