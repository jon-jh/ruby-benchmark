def benchmark #Just like defining a JS function so it can be reusable.
start_time = Time.now
yield # Like a JS callback this is what code will be executed
end_time = Time.now
running_time = end_time - start_time #Calculate the total time taken
running_time # This is like saying return running_time in JS
end

long_string = "apple"*100000000
running_time = benchmark { long_string.reverse }
# puts "#{long_string.reverse}" # This would output the word apple* 100 million reveresed. The only reason is to test that our benchmark timer function is correctly reporting how long it took.
puts "string.reverse took #{running_time} seconds to run"

# Javascript for comparison:
# function benchmark(callback) {
#   const startTime = Date.now();
#   callback();
#   const endTime = Date.now();
#   return endTime - startTime;
# }

# const runningTime = benchmark(() => "apple".repeat(100000000));
# console.log(`Operation took ${runningTime} milliseconds`);