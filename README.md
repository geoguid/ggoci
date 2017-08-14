## GGOCI
GGOCI is een fork van QOCI (Qt SQL driver voor OCI) zoals die was in Qt 5.6.0.
Deze fork past een aantal dingen aan ten opzichte van de Qt versie.

1. QOCI geeft voor de numerieke preciecie (op gedetailleerd) altijd een string terug. GGOCI geeft aan de hand van de precisie het juiste type terug (int, double, long).
2. SQLCS_IMPLICIT i.p.v. SQLCS_NCHAR
3. Precision policy van QSql wordt niet ondersteund door eerder genoemde gedetailleeerdere precisie afhandeling.

## Compileren
De driver wordt getest en gebruikt onder Windows (7, 8 en 10) en compileert met Visual Studio 2010 en uiteraard Qt 5.6.x.
Onder Windows kan dit gecompileerd worden. Stel eerst de omgevingsvariabelen in!
* set INCLUDE=%INCLUDE%;c:\oracle\oci\include
* set LIB=%LIB%;c:\oracle\oci\lib\msvc
* cd %QTDIR%\qtbase\src\plugins\sqldrivers\oci

Nu kan het gecompileerd worden met de volgende stappen:
1. Clone deze repository.
2. ga in de map plugins/sqldrivers/oci/
3. qmake oci.pro
4. nmake
