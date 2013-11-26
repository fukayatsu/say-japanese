require "say/japanese/version"

module Kernel
  @@say_as_japanese_voice = :kyoko

  def say(text)
    say_as @@say_as_japanese_voice, text
  end

  def say_as(voice, text)
    return unless text
    text = text.to_s.strip
    return if text.empty?
    text.gsub!(/(\r\n|\r|\n)/, '。')

    voice ||= @@say_as_japanese_voice

    system "say -v #{voice} #{text}"
  end

  def set_say_as_default(voice)
    unless [:kyoko, :otoya].include?(voice)
      puts "invalid voice #{voice}"
      puts "use :kyoko or :otoya"
      return
    end

    @@say_as_japanese_voice = voice
  end
end

