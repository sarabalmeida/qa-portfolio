# ======================================================

# SQL Validation Examples for QA

# Autor: Sara Borges Almeida

# Objetivo: Exemplos de consultas utilizadas durante

# atividades de validação de software.

# ======================================================

---

## -- 1. Validar se o usuário foi cadastrado

SELECT
id,
nome,
email,
cpf,
status
FROM usuarios
WHERE email = '[usuario@email.com](mailto:usuario@email.com)';

---

## -- 2. Validar cadastro duplicado

SELECT
cpf,
COUNT(*) AS quantidade
FROM usuarios
GROUP BY cpf
HAVING COUNT(*) > 1;

---

## -- 3. Validar e-mails duplicados

SELECT
email,
COUNT(*)
FROM usuarios
GROUP BY email
HAVING COUNT(*) > 1;

---

## -- 4. Verificar usuários inativos

SELECT
id,
nome,
status
FROM usuarios
WHERE status = 'INATIVO';

---

## -- 5. Validar data de criação

SELECT
id,
nome,
data_criacao
FROM usuarios
ORDER BY data_criacao DESC;

---

## -- 6. Conferir último usuário cadastrado

SELECT *
FROM usuarios
ORDER BY id DESC
FETCH FIRST 1 ROWS ONLY;

---

## -- 7. Validar registros sem e-mail

SELECT *
FROM usuarios
WHERE email IS NULL;

---

## -- 8. Validar campos obrigatórios vazios

SELECT *
FROM usuarios
WHERE nome IS NULL
OR cpf IS NULL;

---

## -- 9. Quantidade total de usuários

SELECT COUNT(*) AS total_usuarios
FROM usuarios;

---

## -- 10. Buscar usuário por CPF

SELECT *
FROM usuarios
WHERE cpf = '12345678900';

---

## -- 11. Validar relacionamento

SELECT
u.nome,
p.numero_pedido,
p.valor_total
FROM usuarios u
INNER JOIN pedidos p
ON u.id = p.usuario_id;

---

## -- 12. Pedidos sem usuário relacionado

SELECT
p.*
FROM pedidos p
LEFT JOIN usuarios u
ON u.id = p.usuario_id
WHERE u.id IS NULL;

---

## -- 13. Total gasto por usuário

SELECT
u.nome,
SUM(p.valor_total) AS total_gasto
FROM usuarios u
INNER JOIN pedidos p
ON u.id = p.usuario_id
GROUP BY u.nome
ORDER BY total_gasto DESC;

---

## -- 14. Usuários cadastrados hoje

SELECT *
FROM usuarios
WHERE DATE(data_criacao) = CURRENT_DATE;

---

## -- 15. Auditoria de registros

SELECT
id,
usuario_alteracao,
data_alteracao
FROM usuarios
ORDER BY data_alteracao DESC;

-- Observação:
-- As tabelas e dados utilizados neste arquivo são
-- fictícios e têm finalidade exclusivamente
-- demonstrativa para composição de portfólio.
