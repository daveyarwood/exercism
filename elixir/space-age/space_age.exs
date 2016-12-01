defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :uranus | :neptune

  @earth_year 31557600 # seconds

  # The number of Earth years equivalent to one year on a given planet.
  @orbital_period %{
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  @doc """
  Returns the number of seconds in a year on a given planet.
  """
  @spec one_year_in_seconds_on(planet) :: float
  def one_year_in_seconds_on(planet) do
    @earth_year * @orbital_period[planet]
  end

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    seconds / one_year_in_seconds_on planet
  end
end

