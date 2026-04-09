# 🎲 Lottery gRPC Project

Projeto backend + frontend simples utilizando **gRPC + Protocol Buffers + Kotlin + Dart**, com foco em geração de jogos de loteria (Lotofácil e Mega-Sena) e arquitetura moderna baseada em contrato.

---

# 🚀 Tecnologias Utilizadas

## Backend

* Kotlin
* gRPC
* Protocol Buffers (Proto)
* Gradle (Kotlin DSL)

## Frontend

* Dart (client gRPC)

---

# 🧱 Arquitetura do Projeto

```
lottery-project/
├── proto/            # Contrato da API (fonte da verdade)
├── backend/          # Servidor gRPC em Kotlin
└── frontend/         # Cliente Dart
```

---

# 🧠 Conceitos Aplicados

## 📦 1. Proto como contrato

O arquivo `.proto` define:

* serviços (API)
* estruturas de dados
* comunicação entre client e server

👉 Não pertence ao backend nem ao frontend — é compartilhado.

---

## ⚡ 2. gRPC

* Comunicação via HTTP/2
* Payload binário (mais rápido que REST/JSON)
* Tipagem forte ponta a ponta

---

## 🧩 3. Arquitetura do Backend

```
com.lottery
├── server   → inicialização do gRPC
├── service  → camada de transporte (gRPC)
├── domain   → regra de negócio
```

Separação clara de responsabilidades:

| Camada  | Responsabilidade |
| ------- | ---------------- |
| proto   | contrato         |
| service | comunicação      |
| domain  | lógica           |
| server  | bootstrap        |

---

# 🎯 Funcionalidades

## 🎲 Geração de jogos

* Lotofácil (15 números de 1 a 25)
* Mega-Sena (6 números de 1 a 60)

### Exemplo de chamada:

```json
{
  "type": "LOTOFACIL",
  "quantity": 2
}
```

### Resposta:

```json
{
  "games": [
    { "numbers": [1, 3, 5, 7, ...] },
    { "numbers": [2, 4, 6, 8, ...] }
  ]
}
```

---

# 🧪 Testando a API

Utilize `grpcurl`:

```powershell
grpcurl -plaintext localhost:9090 list
```

```powershell
grpcurl -plaintext `
  -d '{"type":"LOTOFACIL","quantity":2}' `
  localhost:9090 `
  lottery.LotteryService/GenerateGame
```

---

# 🖥️ Executando o projeto

## Backend

```powershell
cd backend
./gradlew build
```

Rodar via IntelliJ:

* Execute `GrpcServer.kt`

---

## Frontend (Dart)

```powershell
cd frontend
dart pub get
dart run
```

---

# ⚙️ Geração de código (Proto)

### Dart

```powershell
protoc -I=..\proto `
  --dart_out=grpc:lib/generated `
  ..\proto\lottery.proto
```

---

# 🔐 Boas práticas adotadas

* Separação de contrato (proto)
* Arquitetura limpa
* Não versionar arquivos gerados (build, .class, etc)
* Uso de `.gitignore` adequado

---

# 📌 Próximos passos

## 🔧 Backend

* Estratégias inteligentes de geração de jogos
* Persistência (histórico de jogos)
* Testes unitários
* Migração completa para Kotlin idiomático

## 📡 Arquitetura

* Integração com Kafka ou RabbitMQ
* Event-driven design

## 🎨 Frontend

* Interface com Flutter
* Visualização de jogos
* Histórico do usuário

---

# 🧠 Aprendizados do Projeto

* Diferença entre REST e gRPC
* Uso de Proto como contrato universal
* Comunicação tipada entre sistemas
* Estruturação de backend moderno

---

# 📌 Observação

Atualmente o sistema utiliza geração **aleatória simples**.
Para maior eficiência em jogos como Lotofácil, é possível evoluir com:

* análise estatística
* frequência de números
* distribuição de pares/ímpares
* padrões históricos

---

# 👨‍💻 Autor

Projeto desenvolvido para estudo e evolução em:

* Backend moderno
* Arquitetura distribuída
* gRPC e comunicação eficiente

---
