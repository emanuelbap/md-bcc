# Exercícios Progressivos - SQL SELECT

Guia progressivo de exercícios sobre SELECT em SQL, começando do mais básico até chegar em JOINs complexos.

---

## 📚 Tabelas Disponíveis

**MUSICA**
- Codigo_Musica (PK)
- Nome_Musica
- Duracao

**AUTOR**
- Codigo_Autor (PK)
- Nome_Autor

**MUSICA_AUTOR** (Tabela de Relacionamento)
- Codigo_Musica (FK)
- Codigo_Autor (FK)

**CD**
- Codigo_CD (PK)
- Nome_CD
- Codigo_Gravadora (FK)
- Preco_Venda

**GRAVADORA**
- Codigo_Gravadora (PK)
- Nome_Gravadora

**FAIXA**
- Codigo_Musica (FK)
- Codigo_CD (FK)
- Numero_Faixa

---

## 🟢 NÍVEL 1: SELECT BÁSICO (Um só SELECT)

### Exercício 1.1: Listar todas as músicas
**Objetivo:** Aprender a fazer um SELECT simples

**Enunciado:** Exiba o nome de todas as músicas do banco de dados.

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT Nome_Musica
FROM MUSICA;

-- Explicação:
-- SELECT Nome_Musica: escolhemos a coluna que queremos ver
-- FROM MUSICA: dizemos de qual tabela vamos buscar os dados
-- Simples assim! Retorna todos os nomes das músicas.
```

---

### Exercício 1.2: Listar código e nome das músicas
**Objetivo:** Trabalhar com múltiplas colunas

**Enunciado:** Exiba o código e o nome de todas as músicas.

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT Codigo_Musica, Nome_Musica
FROM MUSICA;

-- Explicação:
-- Quando queremos múltiplas colunas, usamos vírgula para separar
-- SELECT coluna1, coluna2, coluna3
-- As colunas serão exibidas nesta ordem da esquerda para direita
```

---

### Exercício 1.3: Listar todos os autores
**Objetivo:** Familiarizar-se com outra tabela

**Enunciado:** Exiba o código e o nome de todos os autores.

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT Codigo_Autor, Nome_Autor
FROM AUTOR;

-- Explicação:
-- Mesmo padrão do exercício anterior!
-- A estrutura é sempre: SELECT (colunas) FROM (tabela)
```

---

## 🟡 NÍVEL 2: W HERE - FILTRANDO DADOS

### Exercício 2.1: Encontrar uma música específica
**Objetivo:** Aprender a usar WHERE para filtrar

**Enunciado:** Encontre a música com o nome 'Brasília Amarela' (caso exista ou qualquer outra existente).

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT Codigo_Musica, Nome_Musica
FROM MUSICA
WHERE Nome_Musica = 'Brasília Amarela';

-- Explicação:
-- WHERE é usado para filtrar dados
-- Só retorna linhas onde a condição é verdadeira
-- Aqui procuramos músicas cuja Nome_Musica seja exatamente 'Brasília Amarela'
-- O sinal = verifica igualdade
-- Importante: strings em SQL usam aspas simples 'assim'
```

---

### Exercício 2.2: Encontrar um autor específico
**Objetivo:** Aplicar WHERE em outra tabela

**Enunciado:** Encontre o código e nome do autor 'Renato Russo'.

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT Codigo_Autor, Nome_Autor
FROM AUTOR
WHERE Nome_Autor = 'Renato Russo';

-- Explicação:
-- Mesmo padrão do exercício anterior
-- WHERE filtra apenas os autores cujo nome é 'Renato Russo'
-- Deveria retornar 1 resultado (ou nenhum se não existir)
```

---

### Exercício 2.3: Filtragem numérica
**Objetivo:** Aprender a filtrar números

**Enunciado:** Liste todas as músicas com duração maior que 200 segundos.

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT Codigo_Musica, Nome_Musica, Duracao
FROM MUSICA
WHERE Duracao > 200;

-- Explicação:
-- Para números não usamos aspas
-- Operadores: > (maior), < (menor), >= (maior ou igual), <= (menor ou igual)
-- = (igual), != ou <> (diferente)
-- Aqui retorna músicas com mais de 200 segundos de duração
```

---

## 🟠 NÍVEL 3: OPERADORES LÓGICOS (AND, OR, NOT)

### Exercício 3.1: Múltiplas condições com AND
**Objetivo:** Combinar condições

**Enunciado:** Liste todas as músicas com duração entre 180 e 300 segundos (inclusive).

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT Codigo_Musica, Nome_Musica, Duracao
FROM MUSICA
WHERE Duracao >= 180 AND Duracao <= 300;

-- Explicação:
-- AND significa "E" - ambas as condições devem ser verdadeiras
-- Duracao >= 180: duração maior ou igual a 180 E
-- Duracao <= 300: duração menor ou igual a 300
-- Retorna apenas músicas que satisfazem AS DUAS condições
```

---

### Exercício 3.2: Alternativas com OR
**Objetivo:** Usar OR para múltiplas opções

**Enunciado:** Liste todos os autores que se chamam 'Renato Russo' OU 'Tom Jobim'.

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT Codigo_Autor, Nome_Autor
FROM AUTOR
WHERE Nome_Autor = 'Renato Russo' OR Nome_Autor = 'Tom Jobim';

-- Explicação:
-- OR significa "OU" - pelo menos uma condição deve ser verdadeira
-- Retorna autores que têm um nome OU outro
-- Use AND quando TODAS as condições precisam ser verdadeiras
-- Use OR quando PELO MENOS UMA condição precisa ser verdadeira
```

---

## 🔴 NÍVEL 4: INTRODUÇÃO A JOINS - Uma Relação

### Exercício 4.1: Primeiro JOIN - Música e seu Autor
**Objetivo:** Aprender a conectar duas tabelas

**Enunciado:** Liste o nome de uma música e o código do autor dessa música.

**Dica:** Use a tabela MUSICA_AUTOR como intermediária!

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT m.Nome_Musica, ma.Codigo_Autor
FROM MUSICA m
JOIN MUSICA_AUTOR ma ON m.Codigo_Musica = ma.Codigo_Musica;

-- Explicação passo a passo:
-- 1. MUSICA m: temos a tabela MUSICA, apelidada de 'm' (apelido)
-- 2. JOIN MUSICA_AUTOR ma ON m.Codigo_Musica = ma.Codigo_Musica
--    - Conectamos com a tabela MUSICA_AUTOR (apelida de 'ma')
--    - A condição ON diz como conectar: o código da música em MUSICA
--      deve ter o mesmo valor que o código da música em MUSICA_AUTOR
-- 3. SELECT m.Nome_Musica: pegamos o nome da música (da tabela 'm')
-- 4. SELECT ma.Codigo_Autor: pegamos o código do autor (da tabela 'ma')
--
-- Apelidos (m, ma) ajudam a distinguir de qual tabela cada coluna vem
-- Pode parecer complicado, mas é assim que conectamos dados!
```

---

### Exercício 4.2: Melhorando o JOIN - Trazer o Nome do Autor
**Objetivo:** Fazer um JOIN com 3 tabelas

**Enunciado:** Liste o nome da música E o nome do autor. (Este é o exercício que você perguntou!)

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT m.Nome_Musica, a.Nome_Autor
FROM MUSICA m
JOIN MUSICA_AUTOR ma ON m.Codigo_Musica = ma.Codigo_Musica
JOIN AUTOR a ON ma.Codigo_Autor = a.Codigo_Autor;

-- Explicação passo a passo:
-- 1. Começamos com MUSICA (apelido 'm')
--
-- 2. Primeiro JOIN: MUSICA_AUTOR (apelido 'ma')
--    Conectamos: m.Codigo_Musica = ma.Codigo_Musica
--    Agora sabemos qual autor está relacionado a qual música
--
-- 3. Segundo JOIN: AUTOR (apelido 'a')
--    Conectamos: ma.Codigo_Autor = a.Codigo_Autor
--    Agora temos acesso ao nome do autor
--
-- 4. SELECT: pegamos m.Nome_Musica (da 1ª tabela)
--           e a.Nome_Autor (da 3ª tabela)
--
-- O resultado mostra cada música com seu(s) autor(es)
-- Se uma música tem 2 autores, ela aparecerá 2 vezes (uma por autor)
```

---

## 🔵 NÍVEL 5: JOINS AVANÇADOS

### Exercício 5.1: Música, Autor e a Faixa em qual CD
**Objetivo:** Conectar 4 tabelas

**Enunciado:** Liste o nome da música, nome do autor, nome do CD e o número da faixa naquele CD.

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT m.Nome_Musica, a.Nome_Autor, c.Nome_CD, f.Numero_Faixa
FROM MUSICA m
JOIN MUSICA_AUTOR ma ON m.Codigo_Musica = ma.Codigo_Musica
JOIN AUTOR a ON ma.Codigo_Autor = a.Codigo_Autor
JOIN FAIXA f ON m.Codigo_Musica = f.Codigo_Musica
JOIN CD c ON f.Codigo_CD = c.Codigo_CD;

-- Explicação:
-- Conectamos 5 tabelas em sequência (MUSICA -> MUSICA_AUTOR -> AUTOR)
--                                      e (MUSICA -> FAIXA -> CD)
--
-- Note que cada JOIN adiciona uma nova "camada" de informação:
-- - De MUSICA, pegamos o nome da música
-- - De MUSICA_AUTOR, conseguimos chegar ao autor
-- - De AUTOR, pegamos o nome do autor
-- - De FAIXA, descobrimos em qual CD e qual número de faixa
-- - De CD, pegamos o nome do CD
--
-- Cada ON conecta logicamente as tabelas pelas suas chaves estrangeiras
```

---

### Exercício 5.2: Música, Autor, CD e Gravadora
**Objetivo:** Navegar pelas relações do banco de dados

**Enunciado:** Liste: nome da música, nome do autor, nome do CD e nome da gravadora daquele CD.

**Sua resposta aqui:**
```sql
-- Escreva seu SQL aqui
```

**GABARITO COMENTADO:**
```sql
SELECT m.Nome_Musica, a.Nome_Autor, c.Nome_CD, g.Nome_Gravadora
FROM MUSICA m
JOIN MUSICA_AUTOR ma ON m.Codigo_Musica = ma.Codigo_Musica
JOIN AUTOR a ON ma.Codigo_Autor = a.Codigo_Autor
JOIN FAIXA f ON m.Codigo_Musica = f.Codigo_Musica
JOIN CD c ON f.Codigo_CD = c.Codigo_CD
JOIN GRAVADORA g ON c.Codigo_Gravadora = g.Codigo_Gravadora;

-- Explicação:
-- Agora temos 6 tabelas!
-- Seguindo a hierarquia de relacionamentos:
--
-- MUSICA -> MUSICA_AUTOR -> AUTOR (para pegar o nome do autor)
-- MUSICA -> FAIXA -> CD (para descobrir o CD)
-- CD -> GRAVADORA (para pegar o nome da gravadora)
--
-- Cada JOIN expande o "escopo" do que sabemos
-- Começamos sabendo só sobre MUSICA
-- Cada novo JOIN permite acessar mais informações relacionadas
```

---

## 💡 RESUMO DE CONCEITOS

| Nível | Conceito | Padrão SQL |
|-------|----------|-----------|
| 1 | SELECT Básico | `SELECT coluna FROM tabela;` |
| 2 | Filtragem WHERE | `SELECT ... FROM ... WHERE condição;` |
| 3 | Lógica AND/OR | `WHERE cond1 AND cond2` ou `WHERE cond1 OR cond2` |
| 4 | JOIN Simples | `SELECT ... FROM tabela1 JOIN tabela2 ON chave;` |
| 5 | JOINs Múltiplos | `SELECT ... FROM t1 JOIN t2 ON ... JOIN t3 ON ...;` |

---

## 🎯 DICAS IMPORTANTES

1. **Apelidos (Aliases):** Use `m`, `a`, `c` para abreviar nomes longos
   ```sql
   FROM MUSICA m  -- 'm' é o apelido para MUSICA
   SELECT m.Nome_Musica  -- usamos o apelido.coluna
   ```

2. **ON vs WHERE:**
   - `ON`: conecta tabelas no JOIN
   - `WHERE`: filtra resultados após o JOIN

3. **Ordem de leitura:**
   ```
   FROM: de qual(is) tabela(s) vou buscar?
   JOIN: como conectar as tabelas?
   WHERE: qual filtro aplicar?
   SELECT: quais colunas exibir?
   ```
   (Nota: SQL lê em outra ordem internamente, mas mentalmente pense assim)

4. **Sempre use apelidos em JOINs:**
   Sem apelido: `SELECT MUSICA.Nome_Musica ...` (longo e confuso)
   Com apelido: `SELECT m.Nome_Musica ...` (claro e conciso)

---

## 🚀 PRÓXIMOS PASSOS (Após dominar estes)

- GROUP BY e agregações (COUNT, SUM, AVG, etc)
- DISTINCT (eliminar duplicatas)
- ORDER BY (ordenar resultados)
- LEFT JOIN, RIGHT JOIN, FULL JOIN (tipos de join)
- Subqueries e CTEs

---

**Bom aprendizado!** 🎓
