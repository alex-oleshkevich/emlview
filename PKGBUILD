pkgname=emlview
_pkgname=emlview
pkgver=2015.07.09
pkgrel=1
pkgdesc="Tiny eml file viewer."
arch=('any')
url="https://github.com/alex-oleshkevich/emailview"
license=('MIT')
depends=(python-pyqt5)
makedepends=('git')
optdepends=()
provides=()
conflicts=()
source=('https://github.com/alex-oleshkevich/emailview.git')
md5sums=('SKIP')

pkgver() {
  cd $srcdir/$_pkgname
}

package() {
    install emlview "$pkgdir"/usr/bin/emlview
}