include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :user do
    nickname   "abe"
    pro { fixture_file_upload("spec/fixtures/img/sample.png", 'image/png') }
  end
end
