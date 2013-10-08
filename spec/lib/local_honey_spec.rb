require "spec_helper"

describe LocalHoney do
  let!(:default_configuration) do
    {
      devise_scopes: [:user]
    }
  end

  after do
    default_configuration.each do |config, value|
      LocalHoney.send("#{config}=", value)
    end
  end

  it "has an accessor for devise scopes" do
    devise_scopes = [:user, :other_user]
    LocalHoney.devise_scopes = devise_scopes
    LocalHoney.devise_scopes.should eq(devise_scopes)
  end
end
