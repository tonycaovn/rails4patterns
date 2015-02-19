class UserRegistration
  attr_reader :user

  def initialize(params)
    @user = User.new(params)
  end
    
  def create
    user.is_approved = true if valid_background_check?
    user.save
  end
  private
  def valid_background_check?
    !!(@user.valid_ssn? || @user.valid_address?)
  end
end
