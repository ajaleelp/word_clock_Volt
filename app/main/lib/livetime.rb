class Time
  def live
    dep = Volt::Dependency.new
    dep.depend

    Volt::Timers.client_set_timeout(500) do
      dep.changed!
    end

    self
  end
end
