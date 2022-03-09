class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [160, 190]

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    fare = clac_fare(ticket)
    fare <= ticket.fare
  end

  def clac_fare(ticket)
    from = STATIONS.index(ticket.stamp_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
