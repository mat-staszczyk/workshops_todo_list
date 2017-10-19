require 'rails_helper'

RSpec.describe Task, type: :model do
  subject { Task.new }
  it { is_expected.to validate_presence_of(:title) }

  context 'ending_first' do
    it 'should have right order' do 
      task1 = Task.create!(title: 'Nope task')
      task2 = Task.create!(title: 'Urgent task', deadline: DateTime.now)
      expect(Task.ending_first.to_a).to eq([task2, task1])
    end
  end 
end
