class Time
  def round_to_interval( min_span, buffer_mins = 10 )
    buffer_seconds = buffer_mins * 60
    seconds = min_span * 60
    ret = ((self.to_i / seconds) + 1) * seconds
    if ret - self.to_i < buffer_seconds
      ret = ((self.to_i / seconds) + 2) * seconds
    end
    Time.at(ret)
  end
end
