FactoryGirl.define do
	factory :user do
		name 			"Ryan Telitz"
		email			"telitz@example.com"
		password	"foobar"
		password_confirmation	"foobar"
	end
end
