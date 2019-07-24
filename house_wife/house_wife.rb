class HouseWife
  attr_accessor :vacuum_cleaner, :washing_machine
  
  def initialize
    @vacuum_cleaner  = VacuumCleaner.new
    @washing_machine = WashingMachine.new
  end

  def clean_up
    vacuum_cleaner.clean_up
  end

  def washing
    washing_machine.washing
  end
end
