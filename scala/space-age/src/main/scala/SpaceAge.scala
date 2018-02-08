object SpaceAge {
  val EarthYear = 31557600 // seconds

  // Given a planet's orbital period, returns a function that expresses an age
  // in seconds in terms of years on that planet, rounded to two decimal places.
  def ageOnPlanet(orbitalPeriod: Double): (Double) => Double = {
    val yearOnPlanet = EarthYear * orbitalPeriod
    (ageInSeconds: Double) => roundToTwoPlaces(ageInSeconds / yearOnPlanet)
  }

  val onEarth   = ageOnPlanet(1.0)
  val onMercury = ageOnPlanet(0.2408467)
  val onVenus   = ageOnPlanet(0.61519726)
  val onMars    = ageOnPlanet(1.8808158)
  val onJupiter = ageOnPlanet(11.862615)
  val onSaturn  = ageOnPlanet(29.447498)
  val onUranus  = ageOnPlanet(84.016846)
  val onNeptune = ageOnPlanet(164.79132)

  private[this] def roundToTwoPlaces(d: Double): Double = {
    BigDecimal(d).setScale(2, BigDecimal.RoundingMode.HALF_UP).toDouble
  }
}
