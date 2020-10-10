# frozen_string_literal: true

class SkaterReflex < ApplicationReflex
  # Add Reflex methods in this file.
  #
  # All Reflex instances expose the following properties:
  #
  #   - connection - the ActionCable connection
  #   - channel - the ActionCable channel
  #   - request - an ActionDispatch::Request proxy for the socket connection
  #   - session - the ActionDispatch::Session store for the current visitor
  #   - url - the URL of the page that triggered the reflex
  #   - element - a Hash like object that represents the HTML element that triggered the reflex
  #   - params - parameters from the element's closest form (if any)
  #
  # Example:
  #
  #   def example(argument=true)
  #     # Your logic here...
  #     # Any declared instance variables will be made available to the Rails controller and view.
  #   end
  #
  # Learn more at: https://docs.stimulusreflex.com

  delegate :current_user, to: :connection
  delegate :render, to: ApplicationController

  before_reflex do
    @skater ||= Skater.find_by(user: current_user)
  end

  def update_tricks
    @skater.update(skater_params)
    @skater.save
    morph '#user_detail', render(UserDetail::UserDetailComponent.new(
                                   current_user: @skater.user
                                 ))
  end

  private

  def skater_params
    params.require(:skater).permit(:name, :status, moves: [])
  end
end
