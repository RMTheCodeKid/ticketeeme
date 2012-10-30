Factory.define :user do |user|
  user.sequence(:email) { |n| "user#{n}@ticketeeme.com"}
  user.password "password"
  user.password_confirmation "password"
end
