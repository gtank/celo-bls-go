.PHONY: submodule

submodule:
	git submodule update --remote --merge
	cd celo-bls-snark-rs; cargo build --release --target x86_64-apple-darwin && cp target/x86_64-apple-darwin/release/libbls_snark_sys.a ../libs/x86_64-apple-darwin/
