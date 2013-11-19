# Appointments

Ruby has `Time` and `Date` classes. Also `DateTime`.

In earlier versions of Ruby, `Time` was implemented in C, and `DateTime` was implemented in Ruby. There was a significant performance difference between the two. On the other hand, `DateTime` was able to handle a much wider range of dates. They handle time zones differently, as far as I can tell.

All of this is just to say that `Time` vs `DateTime` is more of a historical accident than anything else, and that there's little practical difference between the two anymore. I tend to just use `Time`.

The problem, though, is that `Time` has an inherent date. You can't just have `5 PM`, it has to be `5 PM on January 17th, 2015`.

Imagine that you are writing software to schedule appointments for a doctor (or nail salon, or massage therapist, or any other type of business that does appointments during the day).

You need to be able to determine the blocks that are taken versus the blocks that are not. Which available slots are there? Can someone schedule a 90 minute session at 2 PM on a given day?

At this point, once you know that all the appointments are on the same day, it would be a lot easier if you could think about these things as `Clock` objects, not `Time` objects.

`Clocks` would only have hours and minutes -- no seconds. You could add 90 to a clock that represents 3 PM and get back a new clock that is 4:30 PM. You could add 60 minutes to a clock at 11:30 PM and be at 1:30 AM.

It seems like `clock1 - clock2` would give you the time difference (in minutes) between them.

Also, if there were two clock instances that both were set to the same time, say 8:21 PM, then they would be equal. They are equivalent, it's the same time, even though they're not necessarily the same object in memory.

There should be an easy way to take an instance of `Time` and get an instance of `Clock` back.


* Implement clock.
* Implement a schedule object of some sort that can represent the appointments or slots for a given day.

Imagine that you will eventually want to make it possible for customers and potential customers to book their own appointments online, but in the first pass you'll probably just show them what is taken, and they'll call the clinic.

