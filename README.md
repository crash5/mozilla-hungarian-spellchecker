# Magyar helyesírás-ellenőrző szótár a Mozilla termékekhez

[![Build Status](https://travis-ci.com/crash5/mozilla-hungarian-spellchecker.svg?branch=master)](https://travis-ci.com/crash5/mozilla-hungarian-spellchecker)

A szótár a Németh László által készített [Magyar Ispell-ből](https://github.com/laszlonemeth/magyarispell) kerül generálásra. Az egyes verziók a [Release](../../releases) oldal alatt találhatóak. A kiegészítő neve tartalmazza a felhasznált commit idejét.

A telepítés az **xpi** kiterjesztésű állománnyal történik.

Egyedül Firefox-al volt tesztelve, de működnie kell a Thunderbird, SeaMonkey és BlueGriffon alkalmazásokkal is.


## Telepítés:

### Firefox böngészőben
Kiterjesztések menü (Ctrl + Shift + A) > Fogaskerék ikon: Telepítés fájlból, majd a letöltött _xpi_ fájl megnyitása


## Felhasznált eszközök:
- Magyar Ispell - http://magyarispell.sourceforge.net/ | https://github.com/laszlonemeth/magyarispell
- Mustache template engine - http://mustache.github.io/
  - Mustache bash - https://github.com/tests-always-included/mo
