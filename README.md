# Falsificador del template CI fail-closed

<!-- HUELLA-FALSIFICADOR-PUBLICO-20261020 -->

Aparato de medición del workflow `HUELLA-CI-TEMPLATE-20261020` y sus correcciones
(`-FIX-20261020`, `-APPARATUS-20261020`). Existe para que la cita del template sea
**auditable**: cada fila de la tabla es una corrida real de GitHub Actions, no una
suposición. Repo **público** desde 2026-10-20T22:16:30Z para ese fin.

## Los cinco controles

Medidos con `gh run list` sobre este repositorio. La columna `run` es la hora UTC de la
corrida que **completó**; las corridas `cancelled` son supersedidas por `concurrency`
(`ci-${{ github.ref }}`) y no cuentan como evidencia.

| rama | árbol | run (2026-10-20T) | conclusión |
|---|---|---|---|
| `main` | `.github/ci-apparatus` = `bash tests/must_fail.sh` (rc 0) + `tests/test_ok.py` | 22:03:35Z | **verde** · aparato declarado que pasa |
| `app-shell-fail` | mismo aparato, `exit 1` | 22:03:39Z | **rojo** · aparato declarado que falla |
| `con-test` | `tests/test_ok.py` que pasa, sin declaración | 22:04:40Z | **verde** · pytest detectado |
| `fail-test` | `tests/test_rojo.py` con `assert False` | 22:04:42Z | **rojo** · pytest corre de verdad, no solo que el archivo exista |
| `sin-aparato` | solo `app.py` y README | 22:06:08Z | **rojo** · `NO_APPARATUS_DECLARED` |

## El control que no vive aquí

Que el template **no se mida a sí mismo** en su repo de origen se mide en
`alexisromtz-lab/platino-labs`: ahí el job aparece **skipped**, nunca verde. `skipped`
es la única representación honesta de «no medí»; un verde sin medición sería la
tautología F-D1 con check verde.

## Nota histórica

La etiqueta `NO_TESTS_FOUND` que aparece en corridas anteriores a 22:03Z está
**superseded**: la sonda solo conocía pytest y publicaba rojo en un repo cuyo aparato
es un banco bash (`git-preflight-gate`). Tras la corrección el rojo se llama
`NO_APPARATUS_DECLARED` y solo cae cuando **no hay nada que medir** — ni declaración ni
tests detectables.

## Naturaleza del repo

No es producto: es el aparato que produjo el cuadro de arriba. Las ramas se conservan
para que cada fila sea reproducible (`git switch <rama>` y mirar Actions). Ninguna rama
publica resultados propios.
