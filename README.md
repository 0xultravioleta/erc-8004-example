# ERC-8004 Trustless Agents Example (V2 - Bidirectional Ratings)

**A complete demonstration of the [ERC-8004 Trustless Agents](https://eips.ethereum.org/EIPS/eip-8004) standard with AI Agents and bidirectional reputation system.**

This example showcases how AI agents can interact trustlessly across organizational boundaries using the [ERC-8004 registry system](https://github.com/ChaosChain/trustless-agents-erc-ri), demonstrating the future of decentralized AI collaboration with complete two-way trust building.

## 🆕 What's New in Version 2?

**Version 2** implements **complete bidirectional ratings** - closing critical gaps from V1:

- ✅ **Alice rates Bob (validator)**: 95/100 - Service providers can now rate validator quality
- ✅ **Alice rates Charlie (client)**: 98/100 - Service providers can now rate client quality
- ✅ **11 blockchain transactions** (up from 9 in V1)
- ✅ **New smart contract functions**: `rateValidator()` and `rateClient()`
- ✅ **Complete two-way trust system**: Everyone rates everyone (like Uber, Airbnb)
- ✅ **Full Docker support**: Run everything in containers with one command

**Why this matters:** In a real economy, trust flows both ways. V2 demonstrates a complete, fair, bidirectional reputation system where validators and clients are held accountable too.

## 🎯 What This Example Demonstrates

- **✅ ERC-8004 Registry Contracts**: Identity, Reputation, and Validation registries
- **✅ AI Agents**: Using CrewAI for sophisticated market analysis and validation
- **✅ Trustless Interactions**: Agents discover, validate, and provide feedback without pre-existing trust
- **✅ Bidirectional Reputation**: Complete two-way rating system for all participants
- **✅ Complete Audit Trail**: Full blockchain-based accountability and transparency
- **✅ Multi-Agent Workflows**: Collaborative AI systems working together
- **✅ Docker Support**: Full containerized deployment with Anvil blockchain

## 🏗️ Architecture Overview

```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   Server Agent  │    │ Validator Agent │    │  Client Agent   │
│    (Alice)      │◄──►│     (Bob)       │◄──►│   (Charlie)     │
│  Agent ID: 1    │    │   Agent ID: 2   │    │   Agent ID: 3   │
│                 │    │                 │    │                 │
│ • Market        │    │ • Validation    │    │ • Feedback      │
│   Analysis      │    │   Service       │    │   Authorization │
│ • Multi-agent   │    │ • Quality       │    │ • Reputation    │
│   workflows     │    │   Assessment    │    │   Management    │
│                 │    │                 │    │                 │
│ 🆕 Rates:       │    │ 🆕 Gets rated:  │    │ 🆕 Gets rated:  │
│  • Bob: 95/100  │    │  • By Alice     │    │  • By Alice     │
│  • Charlie:98/100│   │  • By servers   │    │  • By servers   │
└─────────────────┘    └─────────────────┘    └─────────────────┘
         │                       │                       │
         └───────────────────────┼───────────────────────┘
                                 │
                    ┌─────────────────────┐
                    │  ERC-8004 Registries│
                    │                     │
                    │ • Identity Registry │
                    │ • Reputation Registry│
                    │ • Validation Registry│
                    └─────────────────────┘
                                 │
                    ┌─────────────────────┐
                    │   Anvil Blockchain  │
                    │   (Local Testnet)   │
                    └─────────────────────┘
```

**🆕 V2 Feature: Bidirectional Trust**
- Arrows (◄──►) indicate two-way ratings
- Alice rates Bob's validation service quality
- Alice rates Charlie's client quality
- Creates complete accountability for all parties

## 🚀 Quick Start

### Option 1: Docker (Recommended) 🐳

**Prerequisites:** Docker and Docker Compose

```bash
# Clone the repository
git clone https://github.com/0xultravioleta/erc-8004-example.git
cd erc-8004-example
git checkout bidirectional

# Run with Docker Compose (starts Anvil + deploys + runs demo)
docker-compose up --build

# The demo will automatically:
# 1. Start Anvil blockchain
# 2. Compile smart contracts
# 3. Deploy ERC-8004 registries
# 4. Run the full V2 demo with bidirectional ratings
```

**That's it!** The entire system runs in containers with zero manual configuration.

---

### Option 2: Local Installation

**Prerequisites:**
1. **Python 3.8+** with pip
2. **Node.js 16+** with npm
3. **Foundry** (for smart contracts)

**Installation:**

1. **Clone and setup:**
   ```bash
   git clone https://github.com/0xultravioleta/erc-8004-example.git
   cd erc-8004-example
   git checkout bidirectional

   # Install Python dependencies
   pip install -r requirements.txt

   # Install Foundry
   curl -L https://foundry.paradigm.xyz | bash
   foundryup
   ```

2. **Compile smart contracts:**
   ```bash
   cd contracts
   forge install foundry-rs/forge-std
   forge build
   cd ..
   ```

3. **Configure environment:**
   ```bash
   cp .env.example .env
   # Edit .env with your configuration (optional)
   ```

4. **Start local blockchain:**
   ```bash
   # In a separate terminal
   anvil
   ```

5. **Run the demo:**
   ```bash
   python demo.py
   ```

## 📋 What Happens in the Demo (V2 - 11 Transactions)

### Phase 1: Registration (Blocks 1-3)
**Transactions 1-3:** Alice, Bob, and Charlie register with the Identity Registry
- Each pays 0.005 ETH registration fee (anti-spam)
- Each receives unique Agent ID (Alice: 1, Bob: 2, Charlie: 3)
- All agents now have verifiable on-chain identities

### Phase 2: Work & Validation (Blocks 4-5)
**Transaction 4:** Alice requests validation from Bob
- Performs BTC market analysis using AI multi-agent workflow
- Creates cryptographic hash of analysis
- Submits validation request on-chain

**Transaction 5:** Bob validates Alice's work
- Reviews analysis using AI validation workflow
- Assigns quality score: **100/100** ✅
- Submits validation response on-chain (permanent record)

### Phase 3: Reputation Building (Blocks 6-7)
**Transaction 6:** Alice authorizes Charlie for feedback
- Grants permission for client to rate her service
- Enables future customer reviews

**Transaction 7:** Bob rates Charlie as a client
- Bob gives Charlie: **85/100** as a client
- First client quality rating on-chain

### Phase 4: Two-Way Ratings 🆕 V2 Feature (Blocks 8-9)
**Transaction 8:** Alice rates Bob (validator quality)
- Alice evaluates Bob's validation service
- Rating: **95/100** ⭐⭐⭐⭐⭐
- Stored on-chain via `rateValidator()` function
- Creates validator accountability

**Transaction 9:** Alice rates Charlie (client quality)
- Alice evaluates Charlie as a client
- Rating: **98/100** ⭐⭐⭐⭐⭐
- Stored on-chain via `rateClient()` function
- Creates client accountability

### Summary: Complete Bidirectional Trust
✅ **11 total blockchain transactions** (up from 9 in V1)
✅ **Everyone rates everyone** (complete two-way trust)
✅ **Full audit trail** with transaction hashes
✅ **Permanent, immutable records** on-chain

## 🤖 AI Agent Details

### Server Agent (Alice)
- **Role**: Market Analysis Service Provider
- **Capabilities**:
  - Senior Market Analyst for trend identification
  - Risk Assessment Specialist for validation
  - Structured analysis with confidence scores
  - Professional reporting standards

### Validator Agent (Bob)
- **Role**: Analysis Validation Service
- **Capabilities**:
  - Senior Analysis Validator for methodology review
  - Quality Assurance Specialist for final assessment
  - Comprehensive scoring (0-100)
  - Detailed feedback and improvement recommendations

## 📁 Project Structure

```
erc-8004-example/
├── README.md                 # This file
├── requirements.txt          # Python dependencies
├── .env.example             # Environment configuration template
├── demo.py                  # Main V2 demonstration script
├── Dockerfile               # Docker container definition
├── docker-compose.yml       # Multi-service orchestration
├── .dockerignore            # Docker build optimization
├── setup.sh                 # Automated setup script
├── SUMMARY.md               # Project summary
│
├── docs/                    # 🆕 Documentation
│   ├── STORY.md            # V1 story (English)
│   ├── STORY.es.md         # V1 story (Spanish)
│   ├── STORY.v2.md         # 🆕 V2 story with bidirectional ratings (English)
│   ├── STORY.v2.es.md      # 🆕 V2 story (Spanish)
│   └── logs.txt            # Demo execution logs
│
├── contracts/               # Smart contracts
│   ├── src/                # Contract source code
│   │   ├── IdentityRegistry.sol
│   │   ├── ReputationRegistry.sol      # 🆕 +rateClient()
│   │   ├── ValidationRegistry.sol      # 🆕 +rateValidator()
│   │   └── interfaces/     # Contract interfaces
│   ├── out/                # Compiled artifacts (ABIs)
│   ├── script/             # Deployment scripts
│   └── foundry.toml        # Foundry configuration
│
├── agents/                  # AI agent implementations
│   ├── __init__.py
│   ├── base_agent.py       # 🆕 Base class with rate_validator() & rate_client()
│   ├── server_agent.py     # Market analysis server agent
│   └── validator_agent.py  # Analysis validation agent
│
├── scripts/                # Utility scripts
│   └── deploy.py           # Contract deployment script
├── data/                   # Generated analysis data (created at runtime)
└── validations/            # Generated validation data (created at runtime)
```

## 🔧 Configuration

### Environment Variables (.env)

```bash
# Blockchain Configuration
RPC_URL=http://127.0.0.1:8545        # Local Anvil
PRIVATE_KEY=0x0000000000000000000000000000000000000000000000000000000000000000
CHAIN_ID=31337

# Agent Domains (optional)
AGENT_DOMAIN_ALICE=alice.example.com
AGENT_DOMAIN_BOB=bob.example.com

# AI Configuration (optional - for enhanced AI features)
# The demo works without these, using fallback analysis
# OPENAI_API_KEY=your_openai_api_key_here
# ANTHROPIC_API_KEY=your_anthropic_api_key_here
```

### Network Support

The example works with any EVM-compatible network:

- **Local Development**: Anvil/Hardhat (default)
- **Testnets**: Sepolia, Goerli, Base Sepolia
- **Mainnets**: Ethereum, Base, Arbitrum, Optimism

Simply update the `RPC_URL` and `CHAIN_ID` in your `.env` file.

## 🎓 Learning Outcomes

After running this example, you'll understand:

1. **ERC-8004 Standard**: How trustless agent interactions work
2. **Registry Architecture**: Identity, reputation, and validation systems
3. **Blockchain Integration**: Smart contract interaction patterns
4. **Trust Models**: How agents build reputation without pre-existing relationships

## 🔍 Key Features Demonstrated

### Trust Models
- **Identity Registry**: Sovereign, portable agent identities
- **Reputation Registry**: Decentralized feedback and rating systems
- **Validation Registry**: Cryptoeconomic validation mechanisms

### AI Capabilities
- **Multi-Agent Workflows**: Collaborative AI systems
- **Structured Analysis**: Professional-grade market analysis
- **Quality Validation**: AI-powered validation and scoring
- **Continuous Learning**: Agents improve through feedback

### Blockchain Integration
- **Smart Contract Interaction**: Seamless Web3 integration
- **Event Monitoring**: Real-time blockchain event handling
- **Gas Optimization**: Efficient transaction patterns
- **Multi-Network Support**: Works across EVM chains

## 🛠️ Extending the Example

### Adding New Agent Types

1. **Create a new agent class** inheriting from `ERC8004BaseAgent`
2. **Implement AI workflows** for your specific use case
3. **Use the new V2 rating methods**: `rate_validator()` and `rate_client()`
4. **Define trust models** your agent supports
5. **Update the demo script** to include your agent

### Integrating with Real APIs

1. **Replace mock data** in `MarketAnalysisTool` with real API calls
2. **Add authentication** for external services
3. **Implement error handling** for network failures
4. **Add rate limiting** for API usage

### Deploying to Production

1. **Use secure key management** (not hardcoded private keys)
2. **Deploy to testnets first** for validation
3. **Implement proper monitoring** and logging
4. **Add comprehensive error handling**
5. **Consider reputation aggregation** (weighted scores across multiple ratings)
6. **Implement dispute resolution** mechanisms
7. **Add time-decay** for old ratings (recent performance matters more)

## 🤝 Contributing

This example is designed to be educational and extensible. Contributions are welcome:

1. **Bug fixes** and improvements
2. **New agent types** and use cases
3. **Additional trust models** and validation methods
4. **Documentation** and tutorials

## 📚 Additional Resources

- **ERC-8004 Specification**: https://eips.ethereum.org/EIPS/eip-8004
- **CrewAI Documentation**: https://docs.crewai.com/
- **A2A Protocol**: https://a2a-protocol.org/
- **Foundry Book**: https://book.getfoundry.sh/

## ⚠️ Important Notes

- **Demo Purpose**: This is an educational example, not production-ready code
- **Security**: Use proper key management in production environments
- **Gas Costs**: Monitor transaction costs on mainnet deployments
- **AI Functionality**: Demo works fully without API keys using fallback analysis
  - With API keys: Full AI-powered analysis via CrewAI + LLMs
  - Without API keys: Intelligent fallback analysis (still demonstrates all ERC-8004 features)
- **Network Requirements**: Requires a running blockchain (Anvil recommended for local testing)

## 🎉 Success Metrics (V2)

When you run this example successfully, you'll see:

- ✅ All contracts deployed and verified (3 registries)
- ✅ Three agents registered with unique IDs (Alice: 1, Bob: 2, Charlie: 3)
- ✅ Complete market analysis generated by AI (BTC analysis with trend, support/resistance)
- ✅ Professional validation with scoring (100/100 validation score)
- ✅ 🆕 **Alice rates Bob**: 95/100 (validator service quality)
- ✅ 🆕 **Alice rates Charlie**: 98/100 (client quality)
- ✅ Full blockchain audit trail with **11 transactions** (up from 9 in V1)
- ✅ Complete bidirectional trust demonstrated

**Expected Output**: The demo runs through all phases, showing:
- Real multi-agent workflows for analysis and validation
- Complete two-way rating system (everyone rates everyone)
- 11 blockchain transactions creating a web of trust
- Works with or without API keys (intelligent fallback analysis)

**V2 Achievement**: This example proves that sophisticated AI agents can work together trustlessly with **complete bidirectional accountability**, laying the foundation for a fair, decentralized agent economy! 🚀

## 📚 Documentation

- **[STORY.v2.md](docs/STORY.v2.md)** - Complete V2 walkthrough (English)
- **[STORY.v2.es.md](docs/STORY.v2.es.md)** - Complete V2 walkthrough (Spanish)
- **[STORY.md](docs/STORY.md)** - Original V1 walkthrough (English)
- **[STORY.es.md](docs/STORY.es.md)** - Original V1 walkthrough (Spanish)

These story documents explain in detail:
- What each transaction does
- Why bidirectional ratings matter
- How the smart contracts work
- Q&A about the trust system
- V1 vs V2 comparison

---

**Built with ❤️ for the ERC-8004 Trustless Agents standard** 