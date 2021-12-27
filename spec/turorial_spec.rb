require "watir"
require "webdrivers"

RSpec.describe Turorial do
    it "should explore California" do
        browser = Watir::Browser.new
        browser.goto "https://explorecalifornia.org/"
        
        expect(browser.text_field(id: "name").exists?).to equal(true)
        expect(browser.textarea(id: "comments").exists?).to equal(true)
    end
end