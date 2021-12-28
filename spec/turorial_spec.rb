require "watir"
require "webdrivers"

RSpec.describe Turorial do
    it "should explore California" do
        browser = Watir::Browser.new
        browser.goto "https://explorecalifornia.org/support.htm"
        
        expect(browser.text_field(id: "name").exists?).to equal(true)
        expect(browser.radio(id: "tourStatus_0").exists?).to equal(true)
    end
end