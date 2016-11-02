source 'https://rubygems.org'


gem 'rails', '4.2.6'
gem 'mysql2', '>= 0.3.13', '< 0.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bootstrap-sass', '~> 3.3.6'
gem 'devise'
gem 'pry-rails'
gem 'carrierwave'
gem 'kaminari'
gem 'acts-as-taggable-on','~> 3.4'
gem 'fog'
gem "erb2haml"
gem "haml-rails"

group :development, :test do
  gem 'byebug'
  gem "rspec-rails", "~> 3.1.0"         #Rails 専用の機能を追加するRSpecのラッパーライブラリ
  gem "factory_girl_rails",  "~> 4.4.1"
  #テストデータを作成する
  gem "faker"               #名前やメールアドレス、その他のプレースホルダなどをダミーデータ生成
  gem "forgery"
end

group :development do
  gem 'web-console', '~> 2.0'
  gem "shoulda-matchers"
  gem 'spring'
              #ユーザーとWebアプリケーションのやり取りをプログラム上で簡単にシュミレートを可能にする
  gem "poltergeist"         #capybaraのためのドライバ
end


group :test do
  gem "capybara"            #ユーザーとWebアプリケーションのやり取りをプログラム上で簡単にシュミレートを可能にする
  gem "database_cleaner"    #データベースをまっさらな状態で各specが実行できるようにする
  gem "launchy"             #テストのデバック用
  gem "poltergeist"         #capybaraのためのドライバ
end




