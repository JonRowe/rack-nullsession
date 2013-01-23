require 'rack-nullsession'

describe 'inserting a null rack session into the middleware stack' do

  let(:result)     { double "some application response" }
  let(:app)        { double "app", :call => result }
  let(:env)        { { "some" => "environment params", "other" => "etc" } }

  let(:middleware) { Rack::NullSession.new app }

  subject { middleware.call env }

  it "calls the application with rack.session value of Hash" do
    app.should_receive(:call).with hash_including("rack.session" => {})
    subject
  end
  it "calls the application preserving the original env" do
    app.should_receive(:call).with hash_including(env)
    subject
  end
  it "preserves the application response" do
    subject.should == result
  end

  context "but rack.session already exists" do
    let(:existing_session) { double }

    before { env["rack.session"] = existing_session }

    it 'leaves the existing session alone' do
      app.should_receive(:call).with hash_including("rack.session" => existing_session)
      subject
    end
  end

end
