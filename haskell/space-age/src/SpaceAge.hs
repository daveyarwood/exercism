module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury | Venus | Earth | Mars |
              Jupiter | Saturn | Uranus | Neptune

earthYear = 31557600 -- seconds

-- Returns the number of Earth years equivalent to one year on a given planet.
orbitalPeriod :: Planet -> Float
orbitalPeriod Earth   = 1
orbitalPeriod Mercury = 0.2408467
orbitalPeriod Venus   = 0.61519726
orbitalPeriod Mars    = 1.8808158
orbitalPeriod Jupiter = 11.862615
orbitalPeriod Saturn  = 29.447498
orbitalPeriod Uranus  = 84.016846
orbitalPeriod Neptune = 164.79132

oneYearInSeconds :: Planet -> Float
oneYearInSeconds planet = earthYear * (orbitalPeriod planet)

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / (oneYearInSeconds planet)
