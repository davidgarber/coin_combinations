class Fixnum
  define_method(:coin_combination) do
   remaining = self
   penny_count = 0
   nickel_count = 0
   dime_count = 0
   quarter_count = 0

   if remaining >= 25
     quarter_count = quarter_count + (remaining/25)
     remaining = remaining % 25
   end

   if remaining >= 10
     dime_count = dime_count + (remaining/10)
     remaining = remaining % 10
   end

   if remaining >= 5
     nickel_count = nickel_count+ (remaining/5)
     remaining = remaining % 5
   end

   if remaining >= 1
     penny_count = penny_count+ (remaining/1)
     remaining = remaining % 1
   end

  "You have #{quarter_count} quarters, #{dime_count} dimes, #{nickel_count} nickels, and #{penny_count} pennies"
end
end
