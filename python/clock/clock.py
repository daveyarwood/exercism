from __future__ import division

class Clock:
    def __init__(self, hours, minutes):
        self.hours = hours
        self.minutes = minutes
        self.adjust()

    def __eq__(self, other):
        self.adjust()
        other.adjust()
        return self.hours == other.hours and self.minutes == other.minutes

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return '{:02d}:{:02d}'.format(self.hours, self.minutes)

    def adjustMinutes(self):
        if self.minutes >= 60:
            self.hours   += self.minutes // 60
            self.minutes  = self.minutes %  60

        if self.minutes < 0:
            minutesBack = self.minutes * -1
            self.hours  -= minutesBack // 60
            self.minutes = (minutesBack % 60) * -1
            if self.minutes < 0:
                self.hours   -= 1
                self.minutes += 60

    def adjustHours(self):
        self.hours = self.hours % 24

    def adjust(self):
        self.adjustMinutes()
        self.adjustHours()

    def add(self, minutes):
        self.minutes += minutes
        self.adjust()
        return self
