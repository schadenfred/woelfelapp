# require "test_helper"

# describe PracticeAreasController do
#   let(:practice_area) { practice_areas :one }

#   it "gets index" do
#     get practice_areas_url
#     value(response).must_be :success?
#   end

#   it "gets new" do
#     get new_practice_area_url
#     value(response).must_be :success?
#   end

#   it "creates practice_area" do
#     expect {
#       post practice_areas_url, params: { practice_area: { description: practice_area.description, name: practice_area.name } }
#     }.must_change "PracticeArea.count"

#     must_redirect_to practice_area_path(PracticeArea.last)
#   end

#   it "shows practice_area" do
#     get practice_area_url(practice_area)
#     value(response).must_be :success?
#   end

#   it "gets edit" do
#     get edit_practice_area_url(practice_area)
#     value(response).must_be :success?
#   end

#   it "updates practice_area" do
#     patch practice_area_url(practice_area), params: { practice_area: { description: practice_area.description, name: practice_area.name } }
#     must_redirect_to practice_area_path(practice_area)
#   end

#   it "destroys practice_area" do
#     expect {
#       delete practice_area_url(practice_area)
#     }.must_change "PracticeArea.count", -1

#     must_redirect_to practice_areas_path
#   end
# end
