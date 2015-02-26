require 'spec_helper'

describe TodoItemsController do

  let!(:todo_list) { TodoList.create(title: "My title", description: "My list description") }

  describe "GET 'index'" do
    it "returns http success" do
      get 'index', todo_list_id: todo_list.id
      response.should be_success
    end
  end

end
