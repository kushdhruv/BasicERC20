# ERC-20 Token Project

This project is a template for developing, testing, and deploying Ethereum smart contracts using [Foundry](https://book.getfoundry.sh/), with a focus on ERC-20 token contracts. It leverages OpenZeppelin Contracts for secure and community-vetted implementations.

## Project Structure

```
.
├── src/                    # Solidity source contracts
│   ├── ManualToken.sol
│   └── OurToken.sol
├── script/                 # Deployment scripts
│   └── DeployOurToken.s.sol
├── test/                   # Solidity tests
│   └── OurTokenTest.t.sol
├── lib/                    # External libraries (OpenZeppelin, forge-std, etc.)
├── broadcast/              # Deployment broadcast logs
├── cache/                  # Build cache
├── .github/workflows/      # GitHub Actions CI configuration
├── Makefile                # Common development commands
├── foundry.toml            # Foundry configuration
├── README.md               # Project documentation
└── ...
```

## Features

- **ERC-20 Token Implementation:** Custom tokens in `src/OurToken.sol` and `src/ManualToken.sol`.
- **Testing:** Comprehensive tests in `test/OurTokenTest.t.sol` using Forge and forge-std.
- **Deployment Scripts:** Automated deployment via `script/DeployOurToken.s.sol`.
- **OpenZeppelin Contracts:** Secure, audited contract components via `lib/openzeppelin-contracts`.
- **CI/CD:** Automated formatting, building, and testing with GitHub Actions.
- **Makefile:** Common tasks for building, testing, deploying, and running local nodes.

## Getting Started

### Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation.html)
- Node.js (for OpenZeppelin scripts, if needed)

### Installation

Clone the repository and install dependencies:

```sh
git clone <repo-url>
cd ERC-20_Token
forge install
```

### Build

```sh
forge build
```

### Test

```sh
forge test
```

### Format

```sh
forge fmt
```

### Gas Snapshots

```sh
forge snapshot
```

### Local Node

Start a local Ethereum node with Anvil:

```sh
anvil
```

### Deploy

Update your `.env` with the appropriate RPC URL and private key, then:

```sh
make deploy
```
Or manually:
```sh
forge script script/DeployOurToken.s.sol:OurToken --rpc-url <your_rpc_url> --private-key <your_private_key>
```

## Directory Overview

- `src/` — Solidity contracts.
- `test/` — Solidity tests.
- `script/` — Deployment scripts.
- `lib/` — External libraries (OpenZeppelin, forge-std).
- `Makefile` — Common development commands.
- `foundry.toml` — Foundry configuration.

## References

- [Foundry Book](https://book.getfoundry.sh/)
- [OpenZeppelin Contracts Docs](https://docs.openzeppelin.com/contracts)
- [forge-std Library](https://github.com/foundry-rs/forge-std)

## License

This project is licensed under the MIT License. See `lib/openzeppelin-contracts/LICENSE-MIT` for details.
