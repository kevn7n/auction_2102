class Attendee
  attr_reader :name, :budget

  def initialize(info_hash)
    @name = info_hash[:name]
    @budget = info_hash[:budget].delete("$").to_i
  end

end
