class Sayer
  attr_reader :voice

  def initialize voice=nil
    @voice = voice
  end

  def say phrase
    args = []
    if voice
      args += ["-v", voice]
    end
    args.push phrase
    system "say", *args
  end
end
