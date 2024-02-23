require 'prob_2'

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      new_list = TodoList.new()
      new_list.add('Do this before 2pm.')
      expect(new_list.todos).to eq(['Do this before 2pm.'])
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      new_list = TodoList.new()
      new_list.add('Do this before 2pm.')
      new_list.remove('Do this before 2pm.')
      expect(new_list.todos).to eq([])
    end
  end

  describe "#todos" do
    it "returns all todos" do
      new_list = TodoList.new()
      new_list.add('Do this before 2pm.')
      new_list.add('Take out the trash.')
      new_list.add('Go to sleep at 9pm.')
      expect(new_list.todos).to eq(['Do this before 2pm.', 'Take out the trash.', 'Go to sleep at 9pm.'])
    end
  end
end
