class Audiophile < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  belongs_to :current_genre_of_choice, :class_name => 'Genre'
         
  def display_name
    if name.present?
      name
    else
      email
    end
  end
  
  def name
    if last_name.present?
      "#{first_name} #{last_name}"
    else
      first_name
    end
  end
end
