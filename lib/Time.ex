defmodule Challenge.Time do
  use Timex

  def time_from_now(num, _) when not is_integer(num) do
    "Please enter a valid number or time type"
  end

  def time_from_now(num, "seconds") do
    time = Timex.shift(Timex.now(), seconds: num)
    Timex.Time.to_12hour_clock(time.hour)
  end

  def time_from_now(num, "minutes") do
    zone = Timezone.convert(Timex.now(), Timex.Timezone.local())
    shifted = Timex.shift(zone, minutes: num)
    Timex.format(shifted, "{0H}-{0M}-{0S}")
  end

  def time_from_now(num, "hours") do
    zone = Timezone.convert(Timex.now(), Timex.Timezone.local())
    shifted = Timex.shift(zone, hours: num)
    Timex.format(shifted, "{0H}-{0m}")
  end

  def time_from_now(num, "days") do
    zone = Timezone.convert(Timex.now(), Timex.Timezone.local())
    shifted = Timex.shift(zone, days: num)
    Timex.format(shifted, "{YYYY}-{0M}-{0D}")
  end

  def time_from_now(num, "months") do
    zone = Timezone.convert(Timex.now(), Timex.Timezone.local())
    shifted = Timex.shift(zone, months: num)
    Timex.format(shifted, "{YYYY}-{0M}-{0D}")
  end

  def time_from_now(num, "years") do
    zone = Timezone.convert(Timex.now(), Timex.Timezone.local())
    shifted = Timex.shift(zone, years: num)
    Timex.format(shifted, "{YYYY}-{0M}-{0D}")
  end

  def time_from_now(_, _) do
    "Please enter a valid number or time type"
  end
end
