# emacs ansi-term support
if test -n "$EMACS"
  set -x TERM eterm-color
else
  fortune
end

# this function may be required
function fish_title
  true
end
