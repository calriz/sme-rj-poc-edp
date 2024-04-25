

WITH

b1 AS (
  SELECT id, matricula, ano_base, serie, bimestre_1 nota, 1 bimestre FROM `[prj_id_bq_cur].[dts_nm_cur].v_base_avaliacao`
),

b2 AS (
  SELECT id, matricula, ano_base, serie, bimestre_2 nota, 2 bimestre FROM `[prj_id_bq_cur].[dts_nm_cur].v_base_avaliacao`
),

b3 AS (
  SELECT id, matricula, ano_base, serie, bimestre_3 nota, 3 bimestre FROM `[prj_id_bq_cur].[dts_nm_cur].v_base_avaliacao`
),

b4 AS (
  SELECT id, matricula, ano_base, serie, bimestre_4 nota, 4 bimestre FROM `[prj_id_bq_cur].[dts_nm_cur].v_base_avaliacao`
)

SELECT b1.* FROM b1
UNION ALL
SELECT b2.* FROM b2
UNION ALL
SELECT b3.* FROM b3
UNION ALL
SELECT b4.* FROM b4