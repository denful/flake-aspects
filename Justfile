help:
  just -l

docs:
  cd docs && pnpm run dev

ci test="":
  nix-unit  --override-input target . --flake github:denful/checkmate#.tests.systems.x86_64-linux.system-agnostic.{{test}}
  
check:
  nix flake check  --override-input target . github:denful/checkmate

fmt:
  nix run github:denful/checkmate#fmt --override-input target .
