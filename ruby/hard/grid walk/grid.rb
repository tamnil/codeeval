class Gridwalk
  def initialize(*args)

    initial = [-99,67]
    to_pass =[]
    to_pass << initial
    passed = []

    pos = near_positions(initial[0],initial[1])
    purged_pos = purge_positions(pos)
    passed = remove_passed(passed,purged_pos)
p "teste"

  end

  def accessible?(x,y)
  end

  def near_positions(x,y)
    return [[x+1, y], [x-1, y], [x, y+1],[x, y-1]]
  end

  def purge_positions(arr)
    ret_arr = []
    arr.each_with_index do |el,i|
      x_arr = el[0].abs.to_s.split("").map(&:to_i).inject(0,:+)
      y_arr = el[1].abs.to_s.split("").map(&:to_i).inject(0,:+)
      if x_arr + y_arr <=  19
        ret_arr << arr[i]
      end
    end
    return ret_arr
  end

  def remove_passed(list, passed)


  end

end

grid = Gridwalk.new

p grid
