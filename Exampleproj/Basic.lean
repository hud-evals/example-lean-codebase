def hello := "world"

def greet (name : String) : String :=
  "Hello, " ++ name ++ "!"

def greet_length_is_12 (name : String) : (name.length + 8 = (greet name).length) := by
  unfold greet
  have hello_length : "Hello, ".length = 7 := by
    rfl
  have exclaim_length : "!".length = 1 := by
    rfl
  simp [hello_length, exclaim_length]
  rw [Nat.add_comm]
