
#!/bin/bash

# Detecta si el HDMI está conectado
if hyprctl monitors | grep -q "HDMI-A-1"; then
    # HDMI conectado: usa solo HDMI
    hyprctl dispatch dpms off eDP-1
    hyprctl keyword monitor HDMI-A-1,preferred,auto,1
    hyprctl keyword monitor eDP-1,disable
else
    # HDMI no conectado: usa solo la pantalla del portátil
    hyprctl keyword monitor ",preferred,auto,auto"
fi
