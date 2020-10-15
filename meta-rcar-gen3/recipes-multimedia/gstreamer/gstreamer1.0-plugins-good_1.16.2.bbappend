SRC_URI_remove = "http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-${PV}.tar.xz"
SRC_URI_append = " gitsm://github.com/renesas-rcar/gst-plugins-good.git;protocol=https;branch=RCAR-GEN3/${PV}"

SRCREV = "5588c8b83e77d5419e498ada54eef0c183486172"

DEPENDS += "mmngrbuf-user-module"

S = "${WORKDIR}/git"

EXTRA_OECONF_append = " \
    --enable-cont-frame-capture \
    --enable-ignore-fps-of-video-standard \
"

do_configure_prepend() {
    cd ${S}
    ./autogen.sh --noconfigure
    cd ${B}
}
