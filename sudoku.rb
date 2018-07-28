def done_or_not(board)
  columns = board.transpose
  # initial checks
  return "Try again!" if board.join.include?("0")
  board.each {|row| return "Try again!" if row.uniq.count != 9}
  columns.each {|column| return "Try again!" if column.uniq.count != 9}
  # divide board into groups of 3 rows
  board.each_slice(3) do |third|
    # get 3 columns from these rows
    third.transpose.each_slice(3) do |ninth|
      return "Try again!" if ninth.flatten(1).uniq.count != 9
    end
  end
  return "Finished!"
end
