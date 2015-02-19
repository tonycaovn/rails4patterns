class User < ActiveRecord::Base
  def welcome
    # send_welcome_email
    WelcomeMailer.welcome(self).deliver

    # enable_welcome_tour
    self.welcome_tour = true
    self.save

    # enable_welcome_promotion
    promo = Promotion.new(name: "Thanks for joining!")
    promo.set_redeemer(self)
  end
end
