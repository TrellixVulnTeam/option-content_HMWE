#!/bin/sh -e

# For relocatable RPM/DEB installation.

dest="$1"

if test X"$dest" = X"" ; then
  exit 0 # Nothing to relocate.
fi

# Need to install miniconda. Do this even when "relocating" to /opt/couchbase
# (ie, before the next test) because DEB/RPM post-install scripts call this
# script.
rm -rf "$dest/lib/python/runtime"
sh "$dest/lib/python/cbpy-installer.sh" -b -p "$dest/lib/python/runtime" > /dev/null 2>&1

if test X"$dest" = X"/opt/couchbase" ; then
  exit 0
fi

reloc() {
  perl -pi -e "s@/opt/couchbase@$dest@g" "$dest/$1"
}

wrapper() {
  mv $1 $1.bin
  cp bin/install/reloc_wrapper.sh $1
  chown bin:bin $1 > /dev/null 2>&1 || true
  chmod a+x $1
}


binaries=`file bin/* bin/tools/* bin/install/* | grep executable | grep -v script | cut -f 1 -d : | sort | uniq`
scripts=`file bin/* bin/tools/* bin/install/* | grep script | cut -f 1 -d : | xargs grep /opt/couchbase | grep -v inary | cut -f 1 -d : | sort | uniq`
others=`grep -R /opt/couchbase etc/* lib/* | grep -v "\.la" | grep -v "\.pc" | grep -v RELEASES | grep -v inary | cut -f 1 -d : | sort | uniq`

for f in $scripts $others ; do reloc $f ; done

for f in $binaries ; do wrapper $f ; done

