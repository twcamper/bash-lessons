#! /usr/bin/env bash

#############################################################################################################
# Exercises
#############################################################################################################
#
# 1 - Fix day and date
# 2 - make day a separate case that only says the name of the day ( $ man strftime )
# 3 - make a female tell us the time ( $ say -v ? )

prompt()
{
  echo Enter '"day", "date", or "time", or "quit"'
}

prompt

while true
do
  read UNIT
  case $UNIT in
  [Dd][Aa]*)
    say 'The date is $(date +'%B %d %Y')'
    ;;
  time|TIME)
    date +'%I:%M:%S %p'
    ;;
  quit)
    exit 0
    ;;
  h|help|*)
    say --voice Whisper Try again!
    prompt
    ;;
  esac
done

