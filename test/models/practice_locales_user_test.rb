require "test_helper"

describe PracticeLocalesUser do


subject { PracticeLocalesUser  }

  describe "db" do

    specify "columns & types" do

      must_have_column(:user_id, :integer)
      must_have_column(:practice_locale_id, :integer)
    end
  end

  describe "associations" do

    specify "belongs_to" do

      must_belong_to(:user)
      must_belong_to(:practice_locale)
    end
  end
end
