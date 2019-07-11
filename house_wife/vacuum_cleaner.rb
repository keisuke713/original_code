class VacuumCleaner
  def clean_up
    locate_garbage
    garbage_run_out
    'finish!'
  end

  def locate_garbage
    "Where's garbages?"
  end

  def garbage_run_out
    'garbage run out!'
  end
end
