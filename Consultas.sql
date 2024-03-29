use cinema;

#3. Faça as seguintes consultas, e grave-as em um arquivo SQL para ser enviado.


#a) Obter o nome e o ano de todos os filmes cadastrados no banco de dados

select NomeFilme, AnoFilme from filme; 

#b) Obter a nacionalidade dos atores cadastrados no BD

select distinct Nacionalidade from ator;

#c) Obter o nome artístico e o nome real dos atores cadastrados no BD

select NomeArtistico, NomeReal from ator;

#d) Obter os personagens e os cachês pagos dos filmes cadastrados.

select personagem, salario as cachê from personagem;

#e) Obter o código e nome artístico dos atores que são do sexo feminino

select CodAtor as Codigo, NomeArtistico as "Nome Artístico"  from ator
where sexo="F"
ORDER BY NomeArtistico;

#f) Obter o código e nome artístico dos atores que são do sexo feminino e que possuem idade entre 35 e 45 anos.

select 	CodAtor as Código, NomeArtistico as "Nome Artístico" from ator
where sexo="F" and (Idade>=35 && Idade<=45);

#g) Obter o nome dos filmes em que o orçamento excede 8.000.000,00

select NomeFilme from filme where Orcamento>8000000;

#h) Obter o número de filmes em que o ator de código ‘a1’ atuou.

select count(CodFilme) as "Número de Filme(s)" from personagem
where CodAtor="a1"; 

#i) Obter o nome dos filmes em que Jim Carrey atua.

select f.NomeFilme from filme f, ator a, personagem p
where p.CodAtor=a.CodAtor and p.CodFilme=f.CodFilme AND a.NomeArtistico="Jim Carrey"; 

#j) Obter o nome dos atores, nacionalidades e idades.

select NomeReal as Nome, Nacionalidade, Idade from ator;

#k) Obter o nome dos atores, personagens e correspondentes cachês.

select distinct a.NomeArtistico, p.Personagem, p.Salario from ator a, personagem p
where p.CodAtor=a.CodAtor;

#l) Obter os nomes dos atores e o total de indicações de oscar recebidos por cada ator.

select NomeArtistico, count(IndicacaoOscar) from ator
group by NomeArtistico; 

#m) Obter o nome dos autores que não atuam em nenhum filme.

select a.NomeArtistico from ator a where a.CodAtor not in (select p.CodAtor from personagem p);

#n) Obter o código e o nome dos filmes em que Jim Carrey não atua.

select f.CodFilme, F.NomeFilme from filme f where f.CodFilme not in(select f.CodFilme from filme f, ator a, 
personagem p
where p.CodAtor=a.CodAtor and 
p.CodFilme=f.CodFilme AND a.NomeArtistico="Jim Carrey") order by f.NomeFilme;

#o) Obter o nome artístico dos atores, bem como a média de ganho com cachês nos filmes que atuaram.

select distinct a.NomeArtistico, sum(p.Salario)/count(p.Salario) from ator a, personagem p
where p.CodAtor=a.CodAtor group by a.NomeArtistico;

#p) Obter os dados dos atores que receberam algum Oscar.

select a.* from ator a where Oscar is not null;

#q) Obter o nome dos atores e suas respectivas idades, que têm idade maior do que a idade média de todos os atores do sexo masculino.

select NomeArtistico, Idade from ator where sexo="M" and Idade>(select sum(Idade)/count(Idade) from ator);

#r) Obter o  ano do Primeiro filme onde Jim Carrey atuou, e o ano de seu último filme.

select min(f.AnoFilme) as "Primeiro Filme", max(f.AnoFilme) as "Último Filme" from filme f, ator a, personagem p 
where p.CodAtor=a.CodAtor and p.CodFilme=f.CodFilme AND a.NomeArtistico="Jim Carrey" ;

#s) Obter o número de filmes em que atuou George Clooney.

select count(f.CodFilme) from filme f, ator a, 
personagem p
where p.CodAtor=a.CodAtor and 
p.CodFilme=f.CodFilme AND a.NomeArtistico="George Clooney";

#t) Obter o nome e o código dos filmes em que Tom Hanks e Matt Damon atuam juntos.

select f.NomeFilme, f.CodFilme from filme f, ator a, personagem p
where p.CodAtor=a.CodAtor and p.CodFilme=f.CodFilme AND a.NomeArtistico="Tom Hanks " and f.CodFilme in (select f.CodFilme from filme f, ator a, personagem p
where p.CodAtor=a.CodAtor and p.CodFilme=f.CodFilme AND a.NomeArtistico="Matt Damon"); 

#u) Obter o nome dos filmes que Tom Hanks atua, mas Matt Damon não atua.

select f.NomeFilme, f.CodFilme from filme f, ator a, personagem p
where p.CodAtor=a.CodAtor and p.CodFilme=f.CodFilme AND a.NomeArtistico="Tom Hanks " and f.CodFilme not in (select f.CodFilme from filme f, ator a, personagem p
where p.CodAtor=a.CodAtor and p.CodFilme=f.CodFilme AND a.NomeArtistico="Matt Damon"); 

#v) Obter o nome dos atores que atuam em algum filme que Jim Carrey atua.

select distinct a.NomeArtistico
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico <> 'Jim Carrey' and f.CodFilme in (select f.CodFilme
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico = 'Jim Carrey') order by a.NomeArtistico;

#w) Obter o nome dos atores que atuam em algum filme que Jim Carrey não atua.

select distinct a.NomeArtistico
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico <> 'Jim Carrey' and f.CodFilme in (select f.CodFilme
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico <> 'Jim Carrey') order by a.NomeArtistico;

#4. Utilizando as consultas UPDATE e DELETE, faça as seguintes consultas e grave-as em um arquivo SQL para ser enviado.
#a) Atualize os valores dos cachês de todos os atores para 100.000.

use cinema;
update personagem set salario=100000 where salario>0;

#b) Atualize a tabela ATOR alterando a sigla USA referente à nacionalidade dos atores para “EUA”.

update ator set Nacionalidade="EUA" where Nacionalidade="USA";

#c) Altere o ano de lançamento do filme “A Máscara do Zorro” para 2001.

update filme set AnoFilme=2001 where NomeFilme like "A Máscara do Zorro";

#d) Acrescente mais 10 anos à idade de todos os atores que são do sexo “Masculino”.

update ator set idade=idade+10 where Sexo="M";
select idade from ator;

#e) Exclua o ator de código ‘a22’.

delete from ator where CodAtor='a22';

#f) Tente remover o ator de código a1 e verifique a mensagem informado pelo MySQL.

DELETE FROM ATOR WHERE CodAtor='a1';

#Não é possível excluir pq possui chave estrangeira ativa