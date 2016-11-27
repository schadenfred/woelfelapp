# require "test_helper"

# describe PracticeLocalesController do
#   let(:practice_locale) { practice_locales :one }

#   it "gets index" do
#     get practice_locales_url
#     value(response).must_be :success?
#   end

#   it "gets new" do
#     get new_practice_locale_url
#     value(response).must_be :success?
#   end

#   it "creates practice_locale" do
#     expect {
#       post practice_locales_url, params: { practice_locale: { address_id: practice_locale.address_id, name: practice_locale.name } }
#     }.must_change "PracticeLocale.count"

#     must_redirect_to practice_locale_path(PracticeLocale.last)
#   end

#   it "shows practice_locale" do
#     get practice_locale_url(practice_locale)
#     value(response).must_be :success?
#   end

#   it "gets edit" do
#     get edit_practice_locale_url(practice_locale)
#     value(response).must_be :success?
#   end

#   it "updates practice_locale" do
#     patch practice_locale_url(practice_locale), params: { practice_locale: { address_id: practice_locale.address_id, name: practice_locale.name } }
#     must_redirect_to practice_locale_path(practice_locale)
#   end

#   it "destroys practice_locale" do
#     expect {
#       delete practice_locale_url(practice_locale)
#     }.must_change "PracticeLocale.count", -1

#     must_redirect_to practice_locales_path
#   end
# end
