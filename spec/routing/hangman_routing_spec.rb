require "spec_helper"

describe HangmanController do
  describe "routing" do

    it "routes to #index" do
      get("/hangman").should route_to("hangman#index")
    end
  end
end
