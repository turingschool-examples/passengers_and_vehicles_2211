class Park
  attr_reader :name,
              :admission,
              :vehicles

  def initialize(name, admission)
    @name = name
    @admission = admission
    @vehicles = []
  end

end