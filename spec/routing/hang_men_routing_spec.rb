require "spec_helper"

describe HangMenController do
  describe "routing" do

    it "routes to #index" do
      get("/hang_men").should route_to("hang_men#index")
    end
  end
end
