class River

  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = ["fish1", "fish2"]
  end

  def count_fish
    @fish.count
  end

  def loose_fish
    return @fish.delete_at(1)
  end

end
