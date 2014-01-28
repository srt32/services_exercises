require 'spec_helper'

describe Mailer do
  before(:each) do
    ActionMailer::Base.delivery_method = :smtp
  end

  it 'sends a welcome email' do
    user = FactoryGirl.create(:user)
    params = { "full_name" => "John Doe", "email" => "john@example.com" }
    email = Mailer.welcome_email(params).deliver
  end

  it 'sends an order confirmation email' do
    user = FactoryGirl.create(:user)
    order = FactoryGirl.create(:order, user: user)
    email = Mailer.order_confirmation(order).deliver
  end
end
