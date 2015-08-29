# int => integer whose index is to be found.
# arr => sorted array of uniq integers.
def chop(int, arr)
  length = arr.length
  if length == 0
    -1
  elsif int == arr[length/2]
    length/2  
  elsif length == 1
    -1 
  elsif int > arr[length/2]
    idx = chop(int, arr[length/2..-1]) 
    (idx > -1) ? (length/2 + idx) : -1
  else
    chop(int, arr[0..length/2-1]) 
  end 
end