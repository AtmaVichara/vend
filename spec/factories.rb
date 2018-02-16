FactoryBot.define do

  factory :owner do
    sequence(:name) { |n| "name#{n}"}
  end

  factory :snack do
    sequence(:name) { |n| "name #{n}"}
    sequence(:price) { |n| "#{n}"}
    machine
  end

  factory :machine do
    sequence(:location) { |n| "location #{n}"}
    owner
  end

end
