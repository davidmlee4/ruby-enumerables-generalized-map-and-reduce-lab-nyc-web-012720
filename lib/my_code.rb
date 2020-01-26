# Your Code Here
def map(source_array)
new = []
i = 0
while i < source_array.length do
  new << yield(source_array[i])
  i += 1
end
new
end


def reduce(source_array, sv=nil)
  if sv
    total = sv
    i = 0
  else
    total = source_array[0] #since no starting value, the running total starts with 1st element
    i = 1
  end
  while i < source_array.length do
    total = yield(total,source_array[i]) #yield means pass each element through the block
    i += 1
  end
end
