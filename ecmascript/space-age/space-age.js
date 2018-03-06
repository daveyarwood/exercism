// rounds a floating-point number to 2 decimal places
function roundToTwoPlaces(number) {
  return parseFloat(number.toFixed(2));
}

class SpaceAge {
  constructor(ageInSeconds) {
    this.seconds = ageInSeconds;
  }

  ageOnPlanet(orbitalPeriod) {
    let earthYear = 31557600; // seconds
    let aYearOnThisPlanet = earthYear * orbitalPeriod
    return roundToTwoPlaces(this.seconds / aYearOnThisPlanet);
  }

  onEarth()   { return this.ageOnPlanet(1.0); }
  onMercury() { return this.ageOnPlanet(0.2408467); }
  onVenus()   { return this.ageOnPlanet(0.61519726); }
  onMars()    { return this.ageOnPlanet(1.8808158); }
  onJupiter() { return this.ageOnPlanet(11.862615); }
  onSaturn()  { return this.ageOnPlanet(29.447498); }
  onUranus()  { return this.ageOnPlanet(84.016846); }
  onNeptune() { return this.ageOnPlanet(164.79132); }
}

export default SpaceAge;
