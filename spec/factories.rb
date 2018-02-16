FactoryBot.define do
  factory :snack_machine do
    snack 
    machine
  end

  factory :owner do
    sequence(:name) { |n| "name#{n}"}
  end

  factory :snack do
    sequence(:name) { |n| "name #{n}"}
    sequence(:price) { |n| "#{n}"}
  end

  factory :machine do
    sequence(:location) { |n| "location #{n}"}
    owner
  end

end
