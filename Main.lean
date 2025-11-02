import Exampleproj.Basic

def main : IO Unit :=
  let greeting := greet "World"
  IO.println greeting
