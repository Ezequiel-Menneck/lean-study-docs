-- Define a structure named RectangularPrism that contains the height, width, and depth of a rectangular prism, each as a Float.
-- Define a function named volume : RectangularPrism → Float that computes the volume of a rectangular prism.
structure RectangularPrism where
  height : Float
  width : Float
  depth : Float
deriving Repr

def volume (rp : RectangularPrism) : Float :=
  rp.height * rp.depth * rp.width

#eval volume { height := 3.3, width := 3.3, depth := 3.3 }


-- Define a structure named Segment that represents a line segment by its endpoints, and define a function length : Segment → Float that computes the length of a line segment. Segment should have at most two fields.

structure Segment where
  start : Float
  finish : Float
deriving Repr

def length (s : Segment) : Float :=
  s.finish - s.start

#eval length { start := 10, finish := 20}

-- Which names are introduced by the declaration of RectangularPrism?
-- A structure named RectangularPrism and a function named volume
-- RectanglarPrism have 3 fields witch names height, width and depth

-- Which names are introduced by the following declarations of Hamster and Book? What are their types?
structure Hamster where
  name : String
  fluffy : Bool

structure Book where
  makeBook ::
  title : String
  author : String
  price : Float

-- Hasmter has 2 fields witch names name e fluffy
-- Book has 3 fields and 1 field changing the constructor name to makeBook
-- The fields names is title, author and price
