FactoryBot.define do
  factory :discussion do
    association :user
    association :category
    pinned { false }
    closed { false }

    sequence(:name) { |n| "Friendly Discussion #{n}" }
  end
end
