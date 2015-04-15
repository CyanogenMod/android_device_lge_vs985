#!/sbin/sh

set -e

# space-separated list of valid basebands
valid_basebands=(MPSS.DI.2.0.1.c1.13-00053-M8974AAAAANPZM-1)

# read off the modem partition...yes...hacky...
current_baseband=`strings /dev/block/platform/msm_sdcc.1/by-name/modem | grep "^MPSS.DI." | head -1`

for b in ${valid_basebands[@]}; do
  [ "$current_baseband" = "$b" ] && exit 0
done

setprop sys.current.baseband $current_baseband
exit 1
