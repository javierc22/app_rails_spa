require 'rails_helper'

RSpec.describe Movie, type: :model do
  # Una pelicula pertenece a una categoria
  it { should belong_to(:category) } 

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:year) }
end
