package space

// This seems kind of silly, but the tests demand it and who am I to argue?
type Planet string

const earthYear int = 31557600 // seconds

var orbitalPeriods = map[Planet]float64{
	"Earth":   1.0,
	"Mercury": 0.2408467,
	"Venus":   0.61519726,
	"Mars":    1.8808158,
	"Jupiter": 11.862615,
	"Saturn":  29.447498,
	"Uranus":  84.016846,
	"Neptune": 164.79132,
}

func Age(ageInSeconds float64, planet Planet) float64 {
	oneYearInSeconds := float64(earthYear) * orbitalPeriods[planet]
	return ageInSeconds / oneYearInSeconds
}
