def hello := "world"

def greet (name : String) : String :=
  "Hello, " ++ name ++ "!"

def greet_length_is_12 (name : String) : (name.length + 8 = (greet name).length) := by
  sorry
