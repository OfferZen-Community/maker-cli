require "spec_helper"

RSpec.describe Maker::Cli do
  it "has a version number" do
    expect(Maker::Cli::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
