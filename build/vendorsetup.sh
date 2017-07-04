prepare_occam() {
  $(gettop)/device/lge/occam/build/prepare_occam "$@"
}

kernel_build() {
  $(gettop)/device/lge/occam/build/kernel_build "$@"
}

make_signed_images() {
  $(gettop)/device/lge/occam/build/make_signed_images "$@"
}

echo "Create Occam images with the following commands:"
echo " $ lunch occam-user"
echo " $ prepare_occam >occamprepare.log 2>&1"
echo " $ kernel_build >occamkernel.log 2>&1"
echo " $ make -j$(grep -c processor /proc/cpuinfo) dist >occambuild.log 2>&1"
echo " $ make_signed_images"
