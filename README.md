# Falsificador del template CI fail-closed

Mide desde fuera el workflow `HUELLA-CI-TEMPLATE-20261020` / `…-FIX-20261020`.
Tres controles, los tres exigidos antes de creerle al template:

| rama | árbol | resultado medido |
|---|---|---|
| `main` | sin ningún `test_*.py` | **rojo** · `NO_TESTS_FOUND: no test_*.py / *_test.py in the tree — failing closed.` |
| `con-test` | `tests/test_ok.py` que pasa | **verde** · `TESTS_FOUND: ./tests/test_ok.py` |
| `fail-test` | `tests/test_rojo.py` con `assert False` | **rojo** en `Correr tests` (prueba que pytest corre de verdad, no solo que el archivo existe) |

El cuarto control —que el template **no se mida a sí mismo** en su repo de origen— se mide en
`alexisromtz-lab/platino-labs`: ahí el job debe aparecer **skipped**, no verde.

Repo privado y de un solo uso: no es producto, es el aparato que produjo este cuadro.
Ninguna rama publica resultados; se conservan para que el cuadro sea reproducible.
