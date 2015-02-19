class UserRegistration
  attr_reader :user

  def initialize(user_params)
    @user = User.new(user_params)
  end

  private
      def valid_background_check?
        @user.is_approved = true
    end
end
