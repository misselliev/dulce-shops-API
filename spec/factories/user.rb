FactoryBot.define do
  factory :user, aliases: [:creator] do
    trait :valid_user do
      id { 20 }
      name { 'Dulce' }
      lastname { 'Woof' }
      email { 'dulce@woof.com' }
      address { 'Iberri #10' }
      zipcode { '85400' }
      password { '123456' }
      username { 'dulcewoof' }
    end

    trait :invalid_user do
      id { nil }
      email { 'email .net' }
      password { '123' }
    end
  end
end
