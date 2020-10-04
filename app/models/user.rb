class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :skater
  after_create :create_user_skater

  private

  def create_user_skater
    Skater.create(user_id: id, name: email, status: new_skater_status)
  end

  def new_skater_status
    [
      'Lets go get some footy',
      'It\'s rippin time',
      'I am the passenger',
      'Wake, Bake, Skate'
    ].sample
  end
end
