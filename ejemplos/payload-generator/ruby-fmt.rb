#!/usr/bin/ruby

file = File.open("payload.bin", "rb")

bytearray = file.read().bytes

bytearray.each_with_index do |b,i| 
  if i % 8 == 0
    if i > 0
      print '"'
      if i < bytearray.length - 1 
        print ' +'
      end
      print "\n"
    end
    print '"'
  end
  print "\\x" + ("%02X" % b)
end
print "\"\n"
