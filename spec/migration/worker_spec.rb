RSpec.describe Migration::Worker do
  it "has a version number" do
    expect(Migration::Worker::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
