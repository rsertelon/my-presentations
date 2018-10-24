pkg_name=my-presentations
pkg_origin=rsertelon
pkg_maintainer="Romain Sertelon <romain@sertelon.fr>"
pkg_license=("Apache-2.0")

pkg_version() {
  git describe --tags
}

pkg_deps=(
  core/coreutils
  core/node
)
pkg_build_deps=(
  core/git
)

pkg_bin_dirs=(node_modules/.bin)

do_before() {
  do_default_before
  update_pkg_version
}

do_build() {
  return 0
}

do_install() {
  cp $PLAN_CONTEXT/../presentations $pkg_prefix/ -R
  find $pkg_prefix/presentations -type d -exec chmod 755 {} \;
  find $pkg_prefix/presentations -type f -exec chmod 644 {} \;

  pushd $pkg_prefix
  npm install --no-optional reveal-md

  fix_interpreter "node_modules/.bin/*" core/coreutils bin/env
  fix_interpreter "node_modules/.bin/*" core/coreutils bin/env
}

do_strip() {
  return 0
}
