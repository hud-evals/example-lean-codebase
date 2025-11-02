import Exampleproj.Basic

#guard greet "World" = "Hello, World!"

-- Verify greet_length has the correct type signature
/--
info: greet_length : ∀ (name : String), name.length + 8 = (greet name).length
-/
#guard_msgs in #check (greet_length : (name : String) → (name.length + 8 = (greet name).length))

-- Verify greet_length doesn't use the sorry axiom
-- This will throw an error if sorry (sorryAx) is used
/--
info: 'greet_length' depends on axioms: [propext, Classical.choice, Quot.sound]
-/
#guard_msgs in #print axioms greet_length
