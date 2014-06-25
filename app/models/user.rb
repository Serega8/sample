class User < ActiveRecord::Base
	# это код назначает email адрес пользователя равным его текущему значению в нижнем регистре с помощью метода строки downcase
	  before_save { self.email = email.downcase }



	  
	  validates :name, presence: true, length: {maximum: 50 }

	  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
  	   								uniqueness: { case_sensitive: false }

  	  has_secure_password
  	  validates :password, length: { minimum: 6 }
	  
end
