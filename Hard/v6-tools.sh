export LV6_PATH=/home/lilian/Desktop/INFO3/ALM5/Hard/lv6-bin-dist

# source me !

if test -z "$LV6_PATH" ; then
  LV6_PATH=`pwd`
fi

# if ocaml is not installed, only rdbg won't work

BASENAME=lv6-bin-dist
V6LIB=$LV6_PATH/lib

export V6TOOLS_LIBPATH="\
-I $V6LIB \
-I $V6LIB/lutils \
-I $V6LIB/polka/ \
-I $V6LIB/camlidl/  \
-I $V6LIB/ezdl/  \
-I $V6LIB/gbddml/  \
-I $V6LIB/lustre-v6/ \
-I $V6LIB/lutin \
-I $V6LIB/lutin-utils \
-I $V6LIB/gmp \
-I $V6LIB/rdbg-plugin"


export V6TOOLS_CMXA="\
gmp.cmxa \
com.cmxa \
gbddml.cmxa \
ezdl.cmxa \
gmp.cmxa \
polka.cmxa \
rdbg-plugin.cmxa \
lutin-utils.cmxa \
lutin.cmxa \
lustre-v6.cmxa" 

export CAML_LD_LIBRARY_PATH=$CAML_LD_LIBRARY_PATH:$V6LIB/stublibs
export LUSTRE_INSTALL=$LV6_PATH
export PATH=$LUSTRE_INSTALL/bin:$PATH
