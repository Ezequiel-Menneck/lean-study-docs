def main: IO Unit := IO.println "Hello, World α"

#eval 1 + 2
#eval 1 + 3 * 9
#eval String.append "Hello" " World"
#eval String.append "great " (String.append "oak" "tree")
#eval String.append "it is" (if 1 > 2 then " yes" else " no")

#eval 42 + 19
#eval String.append "A" (String.append "B" "C")
#eval String.append (String.append "A" "B") "C"
#eval if 3 == 3 then 5 else 7
#eval if 3 == 4 then "equal" else "not equal"

def joinStringsWith (a : String) (b : String) (c : String) : String :=
  String.append b (String.append a c)


#eval joinStringsWith ", " "one" "and another"
#check joinStringsWith ", "

def volume (height : Nat) (width : Nat) (depth : Nat) : Nat :=
  height * width * depth

#eval volume 3 3 3
#check (volume)

def NaturalNumber : Type := Nat
-- def thirtyEight : NaturalNumber := 38
def thirtyEight : NaturalNumber := (38 : Nat)

structure Point where
  x : Float
  y : Float
deriving Repr

def origin : Point := { x := 0.0, y := 0.0 }

#eval origin
#eval origin.x

def addPoints (p1 : Point) (p2 : Point) : Point :=
  { x:= p1.x + p2.x, y := p1.y + p2.y }

#eval addPoints { x := 1.5, y := 32 } { x := -8, y:= 0.2 }

structure Point3D where
  x := Float
  y := Float
  z := Float
deriving Repr

#check ({x := 0, y := 0} : Point)
#check {x := 0, y := 0 : Point}

def twice (f : Nat → Nat) (a : Nat) : Nat :=
  f (f a)

#eval twice (fun x => x + 2) 10
