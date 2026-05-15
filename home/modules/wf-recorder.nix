{ pkgs, ... }:

{
  home.packages = [
    pkgs.wf-recorder

    (pkgs.writeShellScriptBin "record" ''
      OUTPUT=~/Videos/$(date +%Y-%m-%d_%H-%M-%S).mp4
      mkdir -p ~/Videos
      notify-send "Recording" "Mulai merekam... (Ctrl+C untuk stop)"
      wf-recorder \
        -a alsa_output.pci-0000_00_1b.0.analog-stereo.monitor \
        -c libx264 \
        -p crf=23 \
        -p preset=ultrafast \
        -f "$OUTPUT"
      notify-send "Recording" "Selesai! Disimpan di $OUTPUT"
    '')
  ];
}
