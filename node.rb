class Node

  attr_reader :next_node

  def initialize(surname, supplies, next_node = nil)
    @surname = surname
    @supplies = supplies
    @next_node = next_node
  end

  def train_to_string
    to_array.join(", followed by ").capitalize
  end

  def to_string
    "the #{@surname} family"
  end

  def to_array
    [self, @next_node.to_array]
  end
  #
  # def string_supplies
  #   supplies.to_a.reduce do |supply, quantity|
  #     ""
  #   end
  # end

  def append(node)
    if next_node
      next_node.append(node)
    else
      next_node = node
    end
  end

  def insert(node, insert_index, my_index = 0)
    if my_index == insert_index
      node.next_node = next_node
      next_node = node
    else
      next_node.insert(node, insert_index, my_index + 1)
    end
  end

  def prepend(node)
    node.next_node = self
    return node
  end

  def includes?(surname)
    if @surname == surname
      true
    else
      if next_node
        next_node.includes?(surname)
      else
        false
      end
    end
  end
end
