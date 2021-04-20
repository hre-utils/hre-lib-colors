#!/bin/bash

# Verification if we've sourced this in other scripts. Name is standardized.
# e.g., filename 'hre-colors.sh' --> '__source_hre_colors=true'
__fname__="$( basename "${BASH_SOURCE[0]%.*}" )"
declare $(
      sed -E -e 's,(.*),__source_\1__,' -e 's,-,_,g' <<< "${__fname__}"
)=true

# Colors:
rst=$(tput sgr0)                                   # Reset
bk="$(tput setaf 0)"                               # Black
rd="$(tput setaf 1)"  ;  brd="$(tput bold)${rd}"   # Red     ;  Bright Red
gr="$(tput setaf 2)"  ;  bgr="$(tput bold)${gr}"   # Green   ;  Bright Green
yl="$(tput setaf 3)"  ;  byl="$(tput bold)${yl}"   # Yellow  ;  Bright Yellow
bl="$(tput setaf 4)"  ;  bbl="$(tput bold)${bl}"   # Blue    ;  Bright Blue
cy="$(tput setaf 6)"  ;  bcy="$(tput bold)${cy}"   # Cyan    ;  Bright Cyan
wh="$(tput setaf 7)"  ;  bwh="$(tput bold)${wh}"   # White   ;  Bright White

# RECOMENDED: add the following 2 lines to whatever utility this is sourced in.
# Will ensure that you are not potentially left with whacky terminal colors if
# the program exits unexpectedly.
#trap 'printf $(tput sgr0)' EXIT
#trap 'printf $(tput sgr0) ; exit 0' INT
