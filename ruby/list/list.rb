class TodoList

  def initialize(chores)
  	@chores = chores
  end

  def get_items
  @chores
  end

  def add_item(chore)
  	@chores << chore
  end

  def delete_item(chore)
  	@chores.delete(chore)
  end

  def get_item(i)
  	@chores[i]
  end

end