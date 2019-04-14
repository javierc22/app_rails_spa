FactoryBot.define do
  factory :movie do
    sequence(:name) { |n| "Pelicula #{n}" }
    description { "MyString" }
    year { 1 }
    ranking { "MyString" }
    category { nil }
  end
end
