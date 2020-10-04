# frozen_string_literal: true

class UserDetail::UserDetailComponent < ViewComponent::Base
  attr_reader :current_user, :skater
  def initialize(current_user:)
    @current_user = current_user
    @skater = current_user&.skater || Skater.new
  end
end
