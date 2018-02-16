# 0: clears SGR (BOLD | BLINK | UNDERLINE | INVERSE), SGR2 (FAINT | ITALIC | STRIKEOUT | DBL_UNDER) and INVISIBLE
# 1: BOLD
# 2: FAINT
# 3: ITALIC
# 4: UNDERLINE
# 5: BLINK
# 7: INVERSE
# 8: INVISIBLE
# 9: STRIKEOUT
# 21: DBL_UNDER
# 22: ~(BOLD|FAINT)
# 23: ~ITALIC
# 24: ~(UNDERLINE|DBL_UNDERL)
# 25: ~BLINK
# 27: ~INVERSE
# 28: ~INVISIBLE
# 29: ~STRIKEOUT
# 30..37 : fg : BGR-bits
# 38: fg : extended colors
# 39: fg : default
# 40..47 : bg : BGR-bits
# 48: bg : extended colors
# 49: bg : default
# 90..97 : fg : BGR-bits + 8 (high)
# 100 : bg : BGR-bits + 8 (high) (or bg+fg : default if 16-color disabled)
# 101..107 : bg : BGR-bits + 8

# extended colors:
# 5: NUM : indexed color
# 2: R, G, B : closest RGB color

echo
echo -e "           0%   33%   66%   99%"
(
    XX='\u2588XX\u2588'
    echo -e "0+30:     \e[0m [\e[30m     $XX \e[30m     $XX \e[37m     $XX \e[37m      $XX \e[38m norm \e[m]"
    echo -e "1+30:     \e[1m [\e[30m     $XX \e[30m     $XX \e[37m     $XX \e[37m      $XX \e[38m bold \e[m]"
    echo -e "0+90:     \e[0m [\e[30m     $XX \e[90m     $XX \e[37m     $XX \e[97m      $XX \e[38m norm \e[m]"
    echo -e "1+90:     \e[1m [\e[30m     $XX \e[90m     $XX \e[37m     $XX \e[97m      $XX \e[38m bold \e[m]"
    echo -e "0+38:     \e[0m [\e[38;5;0m $XX \e[38;5;8m $XX \e[38;5;7m $XX \e[38:5:15m $XX \e[38m norm \e[m]"
    echo -e "1+38:     \e[1m [\e[38;5;0m $XX \e[38;5;8m $XX \e[38;5;7m $XX \e[38:5:15m $XX \e[38m bold \e[m]"
) | sed 's/  */ /g'
echo

