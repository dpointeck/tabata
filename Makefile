.PHONY: install dev

# Install dependencies
install:
	@pnpm install

# Run the dev server
dev:
	@pnpm dev

# Run tests
test_unit:
	@pnpm test:unit

test_integration:
	@pnpm test:integration