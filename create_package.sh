echo "package name :$1"

cd /tmp

mkdir -p "workdir/$1/DEBIAN"
echo "Package: $1">"workdir/$1/DEBIAN/control"
echo "Version: 0.0.1">>"workdir/$1/DEBIAN/control"
echo "Architecture: all">>"workdir/$1/DEBIAN/control"
echo "Essential: no">>"workdir/$1/DEBIAN/control"
echo "Section: web">>"workdir/$1/DEBIAN/control"
echo "Priority: optional">>"workdir/$1/DEBIAN/control"
echo "Depends: python3">>"workdir/$1/DEBIAN/control"
echo "Maintainer: Ryan Duffield">>"workdir/$1/DEBIAN/control"
echo "Installed-Size: 1">>"workdir/$1/DEBIAN/control"
echo "Description: Dummy">>"workdir/$1/DEBIAN/control"

dpkg -b "workdir/$1" "workdir/$1.deb"
sudo dpkg -i "workdir/$1.deb"

rm workdir -rd
