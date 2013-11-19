# This is a lesson about how to use Pry.
# Pry is a REPL and it can be used in place of IRB.
#
# This file contains two things.  First, this tiny
# bit of ruby code:
require 'pry'

def log(message, number)
  foo(message)
end

def foo(message)
  local_to_foo = "only in foo"
  binding.pry
  "done with foo"
end

log("hello", 1000)

# and then a transcript of a pry session, which follows down below.
#
# You can use this file in one of two ways:
# 1. You can look at the ruby code above and then try to decipher
#    the transcript below.
# OR
# 2. You can run this file (which will throw you into your own
#    pry session) and then explore by typing pry commands
#    yourself, using the transcript below as a starting
#    point.
#
# To run the code, cd to the root of this project and type:
#   > ruby adhoc/exploring_with_pry.rb
#
# This will start a pry session in your terminal window. Now you can
# enter pry commands.
#
# The transcipt below is a record of a past pry session; it interleaves
# the commands I typed with the responses that came back from Pry.
#
# My personal pry prompt is set to '[n]>' (where n shows line number)
# so the first line that I actually typed looks like this:
#   [1]> local_to_foo
#
# If you want to exactly reproduce my session scan the transcript for
# the commands I typed (ie, find lines that start with '[n]>' and
# type the same command in your own session.
#
# There are many more pry commands, see:
#   http://pryrepl.org/pry/
#   https://github.com/pry/pry
#   https://github.com/nixme/pry-nav
#   https://github.com/pry/pry-stack_explorer
#
#
#
# -----------------------------------------------------
# ---------------Transcript starts here ---------------
# -----------------------------------------------------
# Frame number: 0/2

# From: /Users/skm/Dropbox/Projects/teach/careerbuilder-2013-nov/adhoc/exploring_with_pry.rb @ line 14 Object#foo:

#     12: def foo(message)
#     13:   local_to_foo = "only in foo"
#  => 14:   binding.pry
#     15:   "done with foo"
#     16: end


# [1]> local_to_foo
# => "only in foo"
#
#
# [2]> message
# => "hello"
#
#
# [3]> number
# NameError: undefined local variable or method `number' for main:Object
# from (pry):3:in `foo'
#
#
#
# [4]> show-stack
# Showing all accessible frames in stack (3 in total):
# --
# => #0  foo <Object#foo(message)>
#    #1 [method]  log <Object#log(message, number)>
#    #2 [main]    <main>
#
#
# [5]> up
# Frame number: 1/2
# Frame type: method

# From: /Users/skm/Dropbox/Projects/teach/careerbuilder-2013-nov/adhoc/exploring_with_pry.rb @ line 9 Object#log:

#      8: def log(message, number)
#  =>  9:   foo(message)
#     10: end



# [6]> number
# => 1000
#
#
# [7]> show-stack
# Showing all accessible frames in stack (3 in total):
# --
#    #0  foo <Object#foo(message)>
# => #1 [method]  log <Object#log(message, number)>
#    #2 [main]    <main>
#
#
# [8]> down
# Frame number: 0/2

# From: /Users/skm/Dropbox/Projects/teach/careerbuilder-2013-nov/adhoc/exploring_with_pry.rb @ line 14 Object#foo:

#     12: def foo(message)
#     13:   local_to_foo = "only in foo"
#  => 14:   binding.pry
#     15:   "done with foo"
#     16: end


# [9]> down
# Error: At bottom of stack, cannot go further!
#
#
# [10]> next
# Frame number: 0/2
# From: /Users/skm/Dropbox/Projects/teach/careerbuilder-2013-nov/adhoc/exploring_with_pry.rb @ line 15 Object#foo:

#     12: def foo(message)
#     13:   local_to_foo = "only in foo"
#     14:   binding.pry
#  => 15:   "done with foo"
#     16: end


# [1]> exit
