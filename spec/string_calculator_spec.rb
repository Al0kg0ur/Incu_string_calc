# spec/string_calculator_spec.rb

require_relative '../string_calculator'
describe StringCalculator do
  describe ".add" do
    context "Empty string" do
      it "returns 0" do
        expect(subject.add("")).to eql(0)
      end
    end

    context "one number" do
      it "returns the number itself" do
        expect(subject.add("1")).to eql(1)
      end
    end

    context "two numbers" do
      it "returns the sum of the numbers" do
        expect(subject.add("1,5")).to eql(6)
      end
    end

    context "multiple numbers" do
      it "returns the sum of the numbers" do
        expect(subject.add("1,2,3")).to eql(6)
      end
    end

    context "new lines between numbers" do
      it "returns the sum of the numbers" do
        expect(subject.add("1\n2,3")).to eql(6)
      end
    end

    context "negative numbers" do
      it "raises an exception with negative numbers" do
        expect { subject.add("1,-2,3") }.to raise_error("[Error]: negative numbers not allowed: -2")
      end
    end
  end
end
