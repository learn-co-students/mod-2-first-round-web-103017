class Superhero < ApplicationRecord
  belongs_to :superpower

  # I am not sure how to display the validation errors on the new view. After hitting submit, how do I get back to the 'new' view while retaining the instance object? Will rails do this automatically for me, or do I need to wrtie logic in my create controller? If I have to write in the controller, how do I pass my instance back to the new view?
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :super_name, presence: true
  validates :super_name, uniqueness: true
end
