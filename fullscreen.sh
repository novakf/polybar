CMDHIDE="polybar-msg cmd hide"
CMDSHOW="polybar-msg cmd show"

FOCUSED=$(xprop -root _NET_ACTIVE_WINDOW | awk -F' ' '{print $NF}')

if xprop -id ${FOCUSED} _NET_WM_STATE | grep -q _NET_WM_STATE_FULLSCREEN; then
    ${CMDHIDE}
else ${CMDSHOW}

fi
