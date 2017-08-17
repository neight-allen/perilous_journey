class LinkedList

  attr_reader :head

  def append(surname, supplies)
    if @head
      @head.append(Node.new(surname, supplies))
    else
      @head = Node.new(surname, supplies)
    end
  end

  def count
    @head.count
  end

  def to_string
    @head.head_to_string
  end

  def insert(index, surname, supplies)
    @head.insert(Node.new(surname, supplies), index)
  end

  def prepend(surname, supplies)
    @head = Node.new(surname, supplies, @head)
  end

  def pop
    tail = @head.pop
    puts "#{tail.surname.to_string} has died of dysentary"
    tail
  end

  def includes?(surname)
    @head.includes?(surname)
  end

end
