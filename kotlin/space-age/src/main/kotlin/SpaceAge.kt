import java.math.BigDecimal

class SpaceAge(val ageInSeconds: Long) {
  // Given a planet's orbital period in Earth years, returns this object's age
  // in years on that planet, rounded to two decimal places.
  private fun ageOnPlanet(orbitalPeriod: Double): Double {
    val earthYear = 31557600 // seconds
    val aYearOnThisPlanet = earthYear * orbitalPeriod
    return roundToTwoDecimalPlaces(ageInSeconds / aYearOnThisPlanet)
  }

  private fun roundToTwoDecimalPlaces(d: Double): Double {
    return BigDecimal(d).setScale(2, BigDecimal.ROUND_HALF_UP).toDouble()
  }

  fun onEarth():   Double { return ageOnPlanet(1.0) }
  fun onMercury(): Double { return ageOnPlanet(0.2408467) }
  fun onVenus():   Double { return ageOnPlanet(0.61519726) }
  fun onMars():    Double { return ageOnPlanet(1.8808158) }
  fun onJupiter(): Double { return ageOnPlanet(11.862615) }
  fun onSaturn():  Double { return ageOnPlanet(29.447498) }
  fun onUranus():  Double { return ageOnPlanet(84.016846) }
  fun onNeptune(): Double { return ageOnPlanet(164.79132) }
}
