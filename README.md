# 🚀 LogiSwift - Fleet Management System

**LogiSwift** é um motor de backend para gestão logística, desenvolvido para demonstrar o domínio de conceitos avançados de Programação Orientada a Objetos (POO) em Swift. O sistema gerencia uma frota de veículos, controla estados de disponibilidade e centraliza métricas globais de operação através de um Singleton.

## 🎯 Objetivos do Projeto

Este projeto simula um desafio técnico real, com foco em:

* **Encapsulamento:** Uso de modificadores de acesso para proteger o estado interno (ex: `private(set)`).
* **Herança e Polimorfismo:** Implementação de uma classe base `Vehicle` com especializações em `Truck` e `Motorcycle`, cada uma com lógicas de consumo distintas.
* **Design Patterns:** Implementação do padrão **Singleton** no `FleetTracker` para garantir uma fonte única de verdade para métricas da frota.
* **Programação Defensiva:** Validação de estados com `guard` para impedir operações inválidas (ex: iniciar rota em veículo já ocupado).

## 🛠️ Tecnologias e Conceitos Utilizados

* **Linguagem:** Swift.
* **Protocolos:** Definição de contratos de interface com o protocolo `finishDelivery`.
* **Sobrescrita (Override):** Especialização de métodos da classe base para cálculos específicos de consumo de combustível.
* **Randomização:** Geração automática de identificadores únicos (IDs) para os veículos durante a inicialização.

## 🏗️ Arquitetura do Sistema

O projeto utiliza a estrutura do Swift Package Manager organizada para escalabilidade:

```text
LogiSwift/
├── Sources/
│   ├── Core/
│   │   └── FleetTracker.swift    # Singleton: Acumula métricas globais de combustível e entregas.
│   └── Models/
│       ├── Vehicle.swift         # Base: Define ID, capacidade e controle de status (inRoute).
│       ├── Truck.swift           # Subclasse: Aplica fator de consumo para carga pesada (2.0L/km).
│       └── Motorcycle.swift      # Subclasse: Aplica fator de consumo para entregas rápidas (0.5L/km).
└── main.swift                    # Sandbox: Execução e simulação de casos de uso.

```

## 🚀 Como Executar

1. **Clone este repositório:**
```bash
git clone https://github.com/vitto2/logi-swift.git

```


2. **Execução:**
Abra a pasta no terminal e utilize o comando:
```bash
swift run

```



## 📈 Exemplo de Fluxo

O sistema valida o estado do veículo e atualiza o rastreador central automaticamente:

```swift
let truck = Truck(axes: 3, loadCapacity: 5000.0)
truck.prepareForDelivery() // ✅ Sucesso: Veículo entra em rota.
truck.prepareForDelivery() // ⚠️ Validação: Impede nova rota se inRoute for true.

truck.finish(distanceDelivery: 100.0) // ⛽ Calcula consumo e registra no FleetTracker.

```

---

⭐ *Este projeto faz parte do meu portfólio de estudos avançados em desenvolvimento iOS e arquitetura de software.*
