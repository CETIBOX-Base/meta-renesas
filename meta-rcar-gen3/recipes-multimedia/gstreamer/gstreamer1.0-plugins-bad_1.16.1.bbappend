SRC_URI_remove = "http://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-${PV}.tar.xz"
SRC_URI_append = " gitsm://pfbitbucket.corp.cetitec.com:7999/cbx3/ext-gst-plugins-bad.git;protocol=ssh;branch=RCAR-GEN3/1.16.1"

SRCREV = "a8c6a582d1f5b3fb09ffca9b0f12b1e16ee825a7"

DEPENDS += "weston"

S = "${WORKDIR}/git"

do_configure_prepend() {
    cd ${S}
    ./autogen.sh --noconfigure
    cd ${B}
}
