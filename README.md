# 🚀 LogiSwift - Fleet Management System

**LogiSwift** é um motor de backend para gestão logística, desenvolvido para demonstrar o domínio de conceitos avançados de Programação Orientada a Objetos (POO) em Swift. O sistema gerencia uma frota de veículos, controla estados de disponibilidade e centraliza métricas globais de operação.

## 🎯 Objetivos do Projeto

Este projeto foi construído para simular um desafio técnico real, focando em:

* **Encapsulamento:** Proteção de estados internos e exposição controlada de dados.
* **Herança e Polimorfismo:** Especialização de veículos (Motos e Caminhões) com comportamentos distintos.
* **Design Patterns:** Implementação do padrão **Singleton** para centralização de métricas.
* **Programação Defensiva:** Validação de estados com `guard` e tratamentos de erro.

## 🛠️ Tecnologias e Conceitos Utilizados

* **Linguagem:** Swift
* **Singletons:** Garantia de uma única instância para o `FleetTracker`.
* **Computed Properties:** Lógicas dinâmicas para status de veículos.
* **Override & Super:** Extensão de funcionalidades da classe base nas subclasses.
* **Randomização:** Geração de códigos identificadores únicos.

## 🏗️ Arquitetura do Sistema

O projeto segue uma estrutura organizada para facilitar a escalabilidade:

```text
LogiSwift/
├── Core/
│   └── FleetTracker.swift    # Singleton: Gerencia métricas globais (km, combustível).
├── Models/
│   ├── Veiculo.swift         # Classe Base: Define o contrato e estado comum.
│   ├── Caminhao.swift        # Subclasse: Lógica de consumo para carga pesada.
│   └── Moto.swift            # Subclasse: Lógica de consumo para entregas rápidas.
└── main.swift                # Sandbox: Execução e simulação de casos de uso.

```

## 🚀 Como Executar

1. Clone este repositório:
```bash
git clone https://github.com/SEU_USUARIO/logiswift.git

```


2. Abra o arquivo no **Xcode** ou execute via terminal utilizando `swift main.swift`.

## 📈 Exemplo de Fluxo

O sistema impede que um veículo inicie uma rota se já estiver ocupado e calcula automaticamente o combustível gasto com base na eficiência de cada modelo ao finalizar uma entrega:

```swift
let caminhao = Caminhao(identificador: "TRUCK-01", capacidade: 1000.0)
caminhao.prepararParaViagem() // ✅ Sucesso
caminhao.prepararParaViagem() // ⚠️ Erro: Veículo já em rota.

caminhao.finalizarEntrega(distancia: 100.0) // Registra 200L no FleetTracker

```

---

⭐ *Este projeto faz parte do meu portfólio de estudos avançados em desenvolvimento iOS.*

