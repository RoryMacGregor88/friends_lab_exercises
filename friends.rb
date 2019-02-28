def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for i in person[:favourites][:snacks]
    if i == food
      return true
    end
    return false
  end
end

def add_friend(person, new_pal)
  person[:friends].push(new_pal)
end

def remove_friend(person, ex_pal)
  person[:friends].delete(ex_pal)
end

def total_money(arr)
  total = 0
  for i in arr
    total += i[:monies]
  end
  return total
end

def loan_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def fave_foods(arr)
  foods = []
  for i in arr
    foods += i[:favourites][:snacks]
  end
  return foods
end

def no_pals(arr)
  array = []
  for i in arr
    if i[:friends].length == 0
      array.push(i)
    end
  end
  return array
end
