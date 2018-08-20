require 'set'
require 'byebug'

class DynamicProgramming
  def initialize
    @blair_cache = []
  end

  def blair_nums(n)
    if @blair_cache[n - 1]
      return @blair_cache[n - 1]
    else 
      return n if n < 3
      count = 1
      odd = 1 
      until count == n - 1
        odd += 2 
        count += 1 
      end 
      ans = blair_nums(n - 1) + blair_nums(n - 2) + odd
      @blair_cache[n - 1] = ans 
      return ans
    end 
  end

  def frog_hops_bottom_up(n)
    cache = frog_cache_builder(n)
    cache[n]
  end

  def frog_cache_builder(n)
    cache = { 1 => [[1]], 2 => [[1,1], [2]], 3 => [[1,2], [2,1], [1,1,1], [3]] }
    return cache if n < 4
    4.upto(n) do |i|
      solutions = []
      3.downto(1) do |j|
        cache[i - j].each do |solution| 
          new_solution = solution.dup
          new_solution << j
          solutions << new_solution
        end 
      end 
      cache[i] = solutions
    end
    cache 
  end

  def frog_hops_top_down(n)

  end

  def frog_hops_top_down_helper(n)

  end

  def super_frog_hops(n, k)

  end

  def knapsack(weights, values, capacity)

  end

  # Helper method for bottom-up implementation
  def knapsack_table(weights, values, capacity)

  end

  def maze_solver(maze, start_pos, end_pos)
  end
end
