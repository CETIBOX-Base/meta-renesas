SRC_URI_remove = "http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-${PV}.tar.xz"
SRC_URI_append = " gitsm://pfbitbucket.corp.cetitec.com:7999/cbx3/ext-gst-plugins-good.git;protocol=ssh;branch=RCAR-GEN3/1.16.1"

SRCREV = "7bd9e62d2107fa8e5e14d66dd749115daf75b35f"

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
