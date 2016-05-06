prepare_occam() {
  $(gettop)/device/lge/occam/build/prepare_occam "$@"
}

kernel_build() {
  $(gettop)/device/lge/occam/build/kernel_build "$@"
}

echo "Create Occam images with the following commands:"
echo " $ lunch occam-user"
echo " $ prepare_occam"
echo " $ kernel_build"
echo " $ make updatepackage > buildlog.log 2>&1"
