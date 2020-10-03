# frozen_string_literal: true

class Skater < ApplicationRecord
  validates_presence_of :name
  before_save :strip_empty_moves

  private

  def strip_empty_moves
    moves.reject!(&:blank?)
  end
end
