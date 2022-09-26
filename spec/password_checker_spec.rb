require 'password_checker'

RSpec.describe PasswordChecker do
  context "if the password is 8 chars" do
    it "returns true" do
      pass = PasswordChecker.new
      expect(pass.check("Password")).to eq true
    end
  end

  context "if the password longer than 8 chars" do
    it "returns true" do
      pass = PasswordChecker.new
      expect(pass.check("Password!")).to eq true
    end
  end

  context "if the password is less than 8 chars" do
    it "fails" do
      pass = PasswordChecker.new
      expect{pass.check("Pasword")}.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
