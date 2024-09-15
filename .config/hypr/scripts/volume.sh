vol_down() {
    wpctl set-volume @DEFAULT_SINK@ 0.05-
}
vol_up() {
    wpctl set-volume @DEFAULT_SINK@ 0.05+
}
vol_mute(){
    wpctl set-mute @DEFAULT_SINK@ toggle
}
mic_down() {
    wpctl set-volume @DEFAULT_SOURCE@ 0.05-
}
mic_up() {
    wpctl set-volume @DEFAULT_SOURCE@ 0.05+
}
mic_mute(){
    wpctl set-mute @DEFAULT_SOURCE@ toggle
}
brt_down(){
    brightnessctl s 5%-
}

brt_up(){
    brightnessctl s 5%+
}
sel() {
    local source="$1"
    local action="$2"

    case "$action" in
        up)
            ${source}_up
        ;;
        down)
            ${source}_down
        ;;
        mute)
            ${source}_mute
        ;;
    esac
}
sel "$1" "$2"
