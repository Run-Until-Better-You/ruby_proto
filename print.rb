# print '1'
# print'1'
# puts'2'
# puts 뒤에 print \n 
# print 뒤에 puts --
# puts puts \n
# print print --

#print '1'
#print '2'
#puts 'mkkkk' 
#print '3' 
#print '4'

# puts' 1'
# puts'  2 '
# puts' 3  '
# puts'4   '

# a='nie'
# print ('gonnichi'+a)
# print a[0]

# print 0.1+0.2

# name=gets # input
# name=gets.chomp()

# name1='me\n'
# name2=gets
# print name1+name2
# if name1==name2
#     puts'right'
# end

# class Greeter
#     attr_accessor :name # 원래 Greeter.respond_to?("name")은 false로 외부에서 접근 못 하지만 attr_accessor 로 외부 접근 가능하게 함
#     def initialize(name="world")
#         @name=name
#     end
#     def say_hi
#         puts "hi #{@name}"
#     end
#     def sya_bye
#         puts "Bye #{@name}"
#     end
# end

# class Defined
#     def initialize(props='default')
#         @props = props
#     end
#     def d1(props='default')
#         @props = props
#     end
#     def d2
#         puts "#{@props}"
#     end
# end
# g = Defined.new('1111')
# =>

class MegaGreeter
  attr_accessor :names

  # Create the object
  def initialize(names = "World")
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end

end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Change the name to an array of names
  mg.names = ["Albert", "Brenda", "Charles",
    "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end