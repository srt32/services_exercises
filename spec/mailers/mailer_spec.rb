require 'spec_helper'

describe Mailer do
  before(:each) do
    ActionMailer::Base.delivery_method = :smtp
  end

  it 'sends a welcome email' do
    user = FactoryGirl.create(:user)
    email = Mailer.welcome_email(user).deliver
  end

  it 'sends an order confirmation email' do
    user = FactoryGirl.create(:user)
    order = FactoryGirl.create(:order, user: user)
    email = Mailer.order_confirmation(user, order).deliver
  end
end
