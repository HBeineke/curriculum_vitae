require 'rails_helper'

RSpec.describe Information, type: :model do
  it { should belong_to(:informable) }
end

RSpec.describe Faq, type: :model do
  subject { Faq.new(informable_type: :personal) }
  it { should belong_to(:informable) }
end

RSpec.describe Interest, type: :model do
  subject { Interest.new(informable_type: :personal) }
  it { should belong_to(:informable) }
end

RSpec.describe Skill, type: :model do
  it { should belong_to(:informable) }
  it { should have_many(:chronicle_items).class_name('ChronicleItem') }
end

RSpec.describe Image, type: :model do
  it { should belong_to(:informable) }
end

RSpec.describe Website, type: :model do
  it { should belong_to(:informable) }
end
