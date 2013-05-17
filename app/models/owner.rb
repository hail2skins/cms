class Owner < ActiveRecord::Base

  has_secure_password	
  before_save { |owner| owner.email = email.downcase }
  before_save :create_remember_token

  has_many :businesses

  has_one :address, as: :addressable
  accepts_nested_attributes_for :address

  
  validates :first_name, :last_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  #simple interpolation with first and last name to a string on a name call.
  def name
    "#{first_name} #{last_name}".to_s   
  end  

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
