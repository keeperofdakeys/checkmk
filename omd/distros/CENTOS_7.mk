DISTRO_CODE       = el7
BUILD_PACKAGES    =
BUILD_PACKAGES   += boost-devel
BUILD_PACKAGES   += curl-devel     # needed by perl modules / thruk
BUILD_PACKAGES   += expat-devel
BUILD_PACKAGES   += fping
BUILD_PACKAGES   += bind-utils
BUILD_PACKAGES   += gcc
BUILD_PACKAGES   += gcc-c++
BUILD_PACKAGES   += libevent-devel         # RHEL Server Optional
BUILD_PACKAGES   += libdbi-devel           # required for rrdtool
BUILD_PACKAGES   += libtool-ltdl-devel     # RHEL Server Optional
BUILD_PACKAGES   += libtool-ltdl           # needed by libtool-ltdl-devel
BUILD_PACKAGES   += gd-devel               # RHEL Server Optional
BUILD_PACKAGES   += libXpm-devel           # needed by gd-devel
BUILD_PACKAGES   += libjpeg-devel          # needed by gd-devel
BUILD_PACKAGES   += httpd-devel
BUILD_PACKAGES   += libmcrypt-devel        # MISSING
BUILD_PACKAGES   += libxml2-devel
BUILD_PACKAGES   += sqlite-devel # needed by Python (for sqlite3 module)
BUILD_PACKAGES   += tk-devel # needed by Python (for Tkinter module)
BUILD_PACKAGES   += mariadb-devel
BUILD_PACKAGES   += postgresql-devel
BUILD_PACKAGES   += ncurses-devel
BUILD_PACKAGES   += net-snmp
BUILD_PACKAGES   += net-snmp-utils
BUILD_PACKAGES   += openssl-devel
BUILD_PACKAGES   += pango-devel
BUILD_PACKAGES   += patch
BUILD_PACKAGES   += php
BUILD_PACKAGES   += readline-devel
BUILD_PACKAGES   += rpm-build
BUILD_PACKAGES   += samba-client # needed for samba monitoring-plugins
BUILD_PACKAGES   += rpcbind # otherwise missing path in util.pm
BUILD_PACKAGES   += libuuid-devel
BUILD_PACKAGES   += which
BUILD_PACKAGES   += perl-devel
BUILD_PACKAGES   += perl-ExtUtils-Embed
BUILD_PACKAGES   += perl-Time-HiRes
BUILD_PACKAGES   += perl-Locale-Maketext-Simple
BUILD_PACKAGES   += perl-IO-Zlib
BUILD_PACKAGES   += rsync
BUILD_PACKAGES   += freeradius-devel
BUILD_PACKAGES   += groff                  # Is needed by rrdtool docs
BUILD_PACKAGES   += pcre-devel # needed for compiling rrdtool
BUILD_PACKAGES   += libpcap-devel # needed for CMC
BUILD_PACKAGES   += gettext # needed for german l10n
BUILD_PACKAGES   += libgsf-devel # needed for msitools
BUILD_PACKAGES   += rrdtool-devel # needed for CMC
BUILD_PACKAGES   += libffi-devel # needed for pyOpenSSL (and dependant) compilations
BUILD_PACKAGES   += flex # needed for heirloom-pkgtools
BUILD_PACKAGES   += flex-devel # needed for heirloom-pkgtools
BUILD_PACKAGES   += openssh-clients # needed for check_by_ssh
OS_PACKAGES       =
OS_PACKAGES      += time # needed for mk-job
OS_PACKAGES      += traceroute # needed for Check_MK parent scan
OS_PACKAGES      += curl
OS_PACKAGES      += dialog
OS_PACKAGES      += expat
OS_PACKAGES      += fping
OS_PACKAGES      += graphviz
OS_PACKAGES      += graphviz-gd
OS_PACKAGES      += httpd
OS_PACKAGES      += libevent
OS_PACKAGES      += libdbi
OS_PACKAGES      += libmcrypt
OS_PACKAGES      += libtool-ltdl
OS_PACKAGES      += rpcbind
OS_PACKAGES      += net-snmp
OS_PACKAGES      += net-snmp-utils
OS_PACKAGES      += pango
OS_PACKAGES      += patch
OS_PACKAGES      += perl-Net-SNMP
OS_PACKAGES      += perl-Locale-Maketext-Simple
OS_PACKAGES      += perl-IO-Zlib
OS_PACKAGES      += php
OS_PACKAGES      += php-cli
OS_PACKAGES      += php-xml
OS_PACKAGES      += php-mbstring
OS_PACKAGES      += php-pdo
OS_PACKAGES      += php-gd
OS_PACKAGES      += readline
OS_PACKAGES      += rsync
OS_PACKAGES      += uuid
OS_PACKAGES      += xinetd
OS_PACKAGES      += cronie
OS_PACKAGES      += freeradius-utils
OS_PACKAGES      += libpcap # needed for ICMP of CMC
OS_PACKAGES      += glib2 # needed by msitools/Agent Bakery
OS_PACKAGES      += bind-utils # needed for check_dns
OS_PACKAGES      += poppler-utils # needed for preview of PDF in reporting
OS_PACKAGES      += libgsf # needed by msitools/Agent Bakery
OS_PACKAGES      += cpio # needed for Agent bakery (solaris pkgs)
OS_PACKAGES      += binutils # Needed by Check_MK Agent Bakery
OS_PACKAGES      += rpm-build # Needed by Check_MK Agent Bakery
#OS_PACKAGES      += pyOpenSSL # needed for Agent Bakery (deployment)
OS_PACKAGES       += libffi # needed for pyOpenSSL and dependant
USERADD_OPTIONS   = -M
ADD_USER_TO_GROUP = gpasswd -a %(user)s %(group)s
PACKAGE_INSTALL   = yum -y makecache ; yum -y install
ACTIVATE_INITSCRIPT = chkconfig --add %s && chkconfig %s on
APACHE_CONF_DIR   = /etc/httpd/conf.d
APACHE_INIT_NAME  = httpd
APACHE_USER       = apache
APACHE_GROUP      = apache
APACHE_BIN        = /usr/sbin/httpd
APACHE_CTL        = /usr/sbin/apachectl
APACHE_MODULE_DIR = /usr/lib/httpd/modules
APACHE_MODULE_DIR_64 = /usr/lib64/httpd/modules
HTPASSWD_BIN      = /usr/bin/htpasswd
PHP_FCGI_BIN      = /usr/bin/php-cgi
APACHE_ENMOD      = true %s
BECOME_ROOT       = su -c
MOUNT_OPTIONS     =
INIT_CMD          = /usr/bin/systemctl %(action)s %(name)s.service
