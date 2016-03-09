FriendlyId::Slug.create!([
  {slug: "ruby-on-rails-baseball-jersey", sluggable_id: 3, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-ruby-baseball-jersey", sluggable_id: 17, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-i-have-a-history-of-this", sluggable_id: 18, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "what-s-a-slug", sluggable_id: 18, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "what-a-slug", sluggable_id: 18, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "not-a-slug", sluggable_id: 17, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-good-stuff", sluggable_id: 20, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-unfortunate-based-on-limited-reason", sluggable_id: 21, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-unfortunate-based-on-limited-reason-copy-of-copy-of-a", sluggable_id: 22, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "what-you-wear", sluggable_id: 22, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-ok-you-get-the-point", sluggable_id: 23, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "oh-please", sluggable_id: 23, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-so-difficult-to-choose-with-so-many-choices", sluggable_id: 25, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "falling-down", sluggable_id: 25, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-whoah-didn-t-see-that-coming", sluggable_id: 26, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "slug-it-this", sluggable_id: 26, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-a-proposal-for-exchange", sluggable_id: 27, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "exchange-me-for-mango", sluggable_id: 27, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "quite-surreal", sluggable_id: 27, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-let-your-freak-flag-fly", sluggable_id: 28, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "code-slug", sluggable_id: 28, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-i-got-it-you-want-it", sluggable_id: 29, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-for-real", sluggable_id: 30, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-retro-rock-t-shirts-aren-t-going-to-cut-it", sluggable_id: 31, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil},
  {slug: "copy-of-i-hear-a-cello-in-the-background", sluggable_id: 32, sluggable_type: "Spree::Product", scope: nil, deleted_at: nil}
])
Spree::OptionValue::HABTM_Variants.create!([
  {variant_id: 17, option_value_id: 1},
  {variant_id: 17, option_value_id: 5},
  {variant_id: 18, option_value_id: 1},
  {variant_id: 18, option_value_id: 7},
  {variant_id: 19, option_value_id: 1},
  {variant_id: 19, option_value_id: 6},
  {variant_id: 20, option_value_id: 2},
  {variant_id: 20, option_value_id: 5},
  {variant_id: 21, option_value_id: 2},
  {variant_id: 21, option_value_id: 7},
  {variant_id: 22, option_value_id: 2},
  {variant_id: 22, option_value_id: 6},
  {variant_id: 23, option_value_id: 3},
  {variant_id: 23, option_value_id: 5},
  {variant_id: 24, option_value_id: 3},
  {variant_id: 24, option_value_id: 7},
  {variant_id: 25, option_value_id: 3},
  {variant_id: 25, option_value_id: 6},
  {variant_id: 26, option_value_id: 4},
  {variant_id: 26, option_value_id: 6}
])
Spree::Role::HABTM_Users.create!([
  {role_id: 1, user_id: 1}
])
Spree::User::HABTM_SpreeRoles.create!([
  {role_id: 1, user_id: 1}
])
Spree::Calculator.create!([
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 1, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>5, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 2, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>10, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 3, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>15, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 4, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>5, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 5, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>8, :currency=>"EUR"}, deleted_at: nil},
  {type: "Spree::Calculator::DefaultTax", calculable_id: 1, calculable_type: "Spree::TaxRate", preferences: {}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 6, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 7, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 8, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 9, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 10, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil}
])
Spree::PaymentMethod.create!([
  {type: "Spree::Gateway::Bogus", name: "Credit Card", description: "Bogus payment gateway.", active: true, deleted_at: nil, display_on: nil, auto_capture: nil, preferences: {:server=>"test", :test_mode=>true}},
  {type: "Spree::PaymentMethod::Check", name: "Check", description: "Pay by check.", active: true, deleted_at: nil, display_on: nil, auto_capture: nil, preferences: {}},
  {type: "Spree::Gateway::Bogus", name: "Credit Card", description: "Bogus payment gateway.", active: true, deleted_at: nil, display_on: nil, auto_capture: nil, preferences: {:server=>"test", :test_mode=>true}},
  {type: "Spree::PaymentMethod::Check", name: "Check", description: "Pay by check.", active: true, deleted_at: nil, display_on: nil, auto_capture: nil, preferences: {}}
])
Spree::Preference.create!([
  {value: 232, key: "spree/app_configuration/default_country_id"},
  {value: "USD", key: "spree/app_configuration/currency"},
  {value: "logo/me.jpg", key: "spree/app_configuration/logo"}
])
Spree::OptionValue.create!([
  {position: 1, name: "Small", presentation: "S", option_type_id: 1},
  {position: 2, name: "Medium", presentation: "M", option_type_id: 1},
  {position: 3, name: "Large", presentation: "L", option_type_id: 1},
  {position: 4, name: "Extra Large", presentation: "XL", option_type_id: 1},
  {position: 1, name: "Red", presentation: "Red", option_type_id: 2},
  {position: 2, name: "Green", presentation: "Green", option_type_id: 2},
  {position: 3, name: "Blue", presentation: "Blue", option_type_id: 2}
])
Spree::User.create!([
  {encrypted_password: "3b8314da8c84a35f10b311a72999c0f80593a0329ecd37d8000f80d68da8645cae44bc3edf44ec62ec276b52a1792173aa721626d6ec3f4d5ae1f8b8d7d68746", password_salt: "wnNooXcdW_XNuw6nKCHc", email: "spree@example.com", remember_token: nil, persistence_token: nil, reset_password_token: nil, perishable_token: nil, sign_in_count: 2, failed_attempts: 0, last_request_at: nil, current_sign_in_at: "2016-02-24 17:19:22", last_sign_in_at: "2016-02-24 16:06:43", current_sign_in_ip: "::1", last_sign_in_ip: "::1", login: "spree@example.com", ship_address_id: nil, bill_address_id: nil, authentication_token: nil, unlock_token: nil, locked_at: nil, reset_password_sent_at: nil, spree_api_key: "003268e9a78f63cdec2c63009128bf5b427fa9f612b9e4c0", remember_created_at: nil, deleted_at: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil}
])
Spree::Role.create!([
  {name: "admin"},
  {name: "user"}
])
Spree::ShippingCalculator.create!([
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 1, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>5, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 2, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>10, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 3, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>15, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 4, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>5, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 5, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>8, :currency=>"EUR"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 6, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 7, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 8, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 9, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 10, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil}
])
Spree::Calculator::DefaultTax.create!([
  {type: "Spree::Calculator::DefaultTax", calculable_id: 1, calculable_type: "Spree::TaxRate", preferences: {}, deleted_at: nil}
])
Spree::Calculator::Shipping::FlatRate.create!([
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 1, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>5, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 2, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>10, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 3, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>15, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 4, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>5, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 5, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>8, :currency=>"EUR"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 6, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 7, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 8, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 9, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil},
  {type: "Spree::Calculator::Shipping::FlatRate", calculable_id: 10, calculable_type: "Spree::ShippingMethod", preferences: {:amount=>0, :currency=>"USD"}, deleted_at: nil}
])
Spree::Gateway.create!([
  {type: "Spree::Gateway::Bogus", name: "Credit Card", description: "Bogus payment gateway.", active: true, deleted_at: nil, display_on: nil, auto_capture: nil, preferences: {:server=>"test", :test_mode=>true}},
  {type: "Spree::Gateway::Bogus", name: "Credit Card", description: "Bogus payment gateway.", active: true, deleted_at: nil, display_on: nil, auto_capture: nil, preferences: {:server=>"test", :test_mode=>true}}
])
Spree::PaymentMethod::Check.create!([
  {type: "Spree::PaymentMethod::Check", name: "Check", description: "Pay by check.", active: true, deleted_at: nil, display_on: nil, auto_capture: nil, preferences: {}},
  {type: "Spree::PaymentMethod::Check", name: "Check", description: "Pay by check.", active: true, deleted_at: nil, display_on: nil, auto_capture: nil, preferences: {}}
])
Spree::Gateway::Bogus.create!([
  {type: "Spree::Gateway::Bogus", name: "Credit Card", description: "Bogus payment gateway.", active: true, deleted_at: nil, display_on: nil, auto_capture: nil, preferences: {:server=>"test", :test_mode=>true}},
  {type: "Spree::Gateway::Bogus", name: "Credit Card", description: "Bogus payment gateway.", active: true, deleted_at: nil, display_on: nil, auto_capture: nil, preferences: {:server=>"test", :test_mode=>true}}
])
