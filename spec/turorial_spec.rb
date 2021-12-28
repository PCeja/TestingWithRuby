require "watir"
require "webdrivers"

RSpec.describe Turorial do
    it "should explore California" do
        browser = Watir::Browser.new
        browser.goto "https://explorecalifornia.org/support.htm"
        
        expect(browser.text_field(id: "name").exists?).to equal(true)
        expect(browser.radio(id: "tourStatus_0").exists?).to equal(true)

        browser.text_field(id: "name").set "Perla Ceja"
        browser.radio(id: "tourStatus_0").set

        expect(browser.text_field(id: "name").value).to match("Perla Ceja")
        expect(browser.radio(id: "tourStatus_0").set?).to equal(true)

    end
end