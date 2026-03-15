SELECT
event_name,
PARSE_DATE('%Y%m%d', event_date) AS data,

(SELECT value.int_value FROM UNNEST(event_params) WHERE key='transaction_id') transaction_id,
(SELECT value.string_value FROM UNNEST(event_params) WHERE key='currency') currency,
(SELECT value.int_value FROM UNNEST(event_params) WHERE key='value') value

FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`

WHERE
_TABLE_SUFFIX BETWEEN '20201101' AND '20201107'
AND event_name='purchase'




SELECT
coluna_evento,

(
 SELECT parametro.valor
 FROM UNNEST(lista_de_parametros) AS parametro
 WHERE parametro.chave = 'parametro_desejado'
) AS alias_parametro

FROM tabela_eventos
WHERE filtros