#!/usr/bin/env LC_ALL=en_US.UTF-8 ruby
# bitbar doesn't spawn shell with local variables, including no sane defaults
# encoding: UTF-8
CMD="/usr/local/bin/reminders"


class Reminder
  @index = 0
  @content = ""
  @list = ""

  def initialize(index, content, list)
    @index = index
    @content = content
    @list = list
  end

  def format(length)
    attributes = "|"
    attributes << " trim=true"
    attributes << " color=white"
    attributes << " terminal=false"
    attributes << " refresh=true"
    attributes << " bash=\"/usr/local/bin/reminders\""
    attributes << " param1=complete"
    attributes << " param2=#{@list}"
    attributes << " param3=#{@index}"

    if @content.length > length
      short = "#{@content[0...length-1]}…".concat(attributes)
      complete = "\n--#{@content}"
      return short.concat(complete)
    else
      return @content.dup.concat(attributes)
    end
    return item.concat(attributes)
  end
end

def parse_reminders(output, list)
  reminders = []
  output.each_line do |line|
    index = line.split.first
    content = line.gsub(/^\S+\s+/, '')
    content = content.strip

    r = Reminder.new(index, content, list)
    reminders.push(r)
  end
  reminders
end

if __FILE__ == $0

  total = 0
  h = Hash.new

  lists = `#{CMD} show-lists`.split
  lists.each do |list|
    r = parse_reminders(`#{CMD} show #{list}`, list)
    total = total + r.count
    h[list] = r
  end

  puts "🗒#{total}"
  puts "---"
  puts "New Reminder| color=white href=\"reminders://\""
  puts "---"

  h.keys.each do |list|
    count = h[list].count
    if count > 0
      puts "#{list}: #{count}"
      h[list].each do |r|
        puts r.format(25)
      end
    end
  end
end

