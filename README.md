# Falsificador del template CI fail-closed

Mide el workflow `HUELLA-CI-TEMPLATE-20261020` desde fuera, con tres controles:

| rama | marcador `.github/ci-fail-closed` | tests | resultado exigido |
|---|---|---|---|
| `main` | ausente | — | job **skipped** (= «no medí», no un verde) |
| `sin-tests` | presente | 0 archivos `test_*.py` | **rojo** con `NO_TESTS_FOUND` |
| `con-test` | presente | `tests/test_ok.py` | **verde** |

Si `sin-tests` diera verde, el template está mal y se declara roto.
Ninguna rama de este repo es producto: el repo existe solo para producir este cuadro.
