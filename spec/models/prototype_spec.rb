require 'rails_helper'

describe Prototype do
  describe '#create' do

    it "is invalid without a title" do
      prototype = build(:prototype, title: nil)
      prototype.valid?
      expect(prototype.errors[:title]).to include("can't be blank")
    end

    it "is invalid without a concept" do
      prototype = build(:prototype, concept: nil)
      prototype.valid?
      expect(prototype.errors[:concept]).to include("can't be blank")
    end

    it "is invalid without a catch_copy" do
      prototype = build(:prototype, catch_copy: nil)
      prototype.valid?
      expect(prototype.errors[:catch_copy]).to include("can't be blank")
    end

  end
end

