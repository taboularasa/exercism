class Array
  def accumulate
    [].tap { |r| each { |e| r << yield(e) } }
  end
end
