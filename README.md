# Full Cyle 3.0 - Desafio Docker + Go

Este projeto faz parte da minha trilha de estudos no vessel. O objetivo principal foi criar uma imagem Docker extremamente enxuta que executa um binário em Go.

## 🎯 O Desafio

1. Criar um programa em Go que imprima: Full Cycle Rocks!!
2. Gerar uma imagem Docker para esse programa
3. Restrição: A imagem final deve ter menos de 2MB

## 🛠️ Tecnologias e Técnicas

- Para atingir o tamanho reduzido, utilizei as seguintes estratégias:
- Linguagem Go: Compilação de um binário estático.
- Multi-stage Build: O processo de compilação acontece em uma imagem (Alpine), mas o resultado final é movido para uma imagem limpa.
- Imagem scratch: Uma imagem Docker "vazia" (0 bytes), contendo apenas o nosso binário.
- Ldflags: Flags de compilação (-s -w) para remover informações de debug e reduzir o tamanho do executável.

## 🚀 Como Executar
Você pode baixar e rodar a imagem diretamente do Docker Hub:

```bash
docker run --rm trsenna/vessel-2602-docker-go:latest
```
