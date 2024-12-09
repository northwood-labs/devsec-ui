include ./standard.mk

# go install golang.org/dl/go{VERSION}@latest
# go{VERSION} download
GO=$(shell which go)

#-------------------------------------------------------------------------------
# Environment

.PHONY: install-hooks
## install-hooks: [tools] Install/upgrade the Git hooks used for ensuring consistency.
install-hooks:
	@ $(HEADER) "=====> Installing Git hooks..."
	cp -vf .githooks/commit-msg.sh .git/hooks/commit-msg
	chmod +x .git/hooks/*
	pre-commit install

	@ $(BORDER) "Learn more about 'pre-commit' at:" "  https://pre-commit.com" " " "Learn more about 'gommit' at:" "  https://github.com/antham/gommit"

# goplicate-start:golang
#-------------------------------------------------------------------------------
# Go(lang)

.PHONY: tidy
## tidy: [go] Tidies go.mod and downloads dependencies.
tidy:
	@ $(HEADER) "=====> Tidy and download the Go dependencies..."
	$(GO) mod tidy -v

.PHONY: godeps
## godeps: [go] Attempts to perform a minor version upgrade of all Go dependencies.
godeps:
	@ $(HEADER) "=====> Upgrade the minor versions of Go dependencies..."
	find . -type f -name "go.mod" | xargs -I% dirname "%" | xargs -I@ bash -c 'cd "@" && $(GO) mod tidy -go=$(GO_VER) && $(GO) get -u -t -v ./...'

	@ echo ""
	@ $(YELLOW) "Run 'make tidy' to clean up the go.mod file."

.PHONY: clean-go
## clean-go: [clean] Clean Go's module cache.
clean-go:
	@ $(HEADER) "=====> Cleaning Go cache..."
	$(GO) clean -i -r -x -testcache -modcache -cache

.PHONY: clean-bench
## clean-bench: [clean] Cleans all benchmarking-related files.
clean-bench:
	@ $(HEADER) "=====> Cleaning artifacts from benchmarks..."
	- find . -type f -name "__*.out" | xargs -I% rm -fv "%"
	- find . -type f -name "*.test" | xargs -I% rm -fv "%"

.PHONY: docs-cli
## docs-cli: [docs] Preview the Go library documentation on the CLI.
docs-cli:
	@ $(HEADER) "=====> Displaying Go CLI documentation..."
	$(GO) doc -C -all

.PHONY: docs-serve
## docs-serve: [docs] Preview the Go library documentation as displayed on pkg.go.dev.
docs-serve:
	@ $(HEADER) "=====> Displaying Go HTTP documentation..."
	open http://localhost:6060/pkg/github.com/northwood-labs/
	godoc -index -links

.PHONY: binsize
## binsize: [docs] Analyze the size of the binary by Go package.
binsize:
	@ $(HEADER) "=====> Displaying Go HTTP documentation..."
	$(GO) tool nm -size "$(GOBIN)/$(BINARY_NAME)" | go-binsize-treemap > binsize.svg
	rsvg-convert --width=2000 --format=png --output="binsize.png" "binsize.svg"

.PHONY: view-cov-cli
## view-cov-cli: [test] After running 'test' or 'unit', this will view the coverage report on the CLI.
view-cov-cli:
	gocovsh --profile=__coverage.out

.PHONY: view-cov-html
## view-cov-html: [test] After running 'test' or 'unit', this will launch a browser to view the coverage report.
view-cov-html:
	$(GO) tool cover -html=__coverage.out

.PHONY: view-cpupprof
## view-cpupprof: [test] After running 'bench', this will launch a browser to view the CPU profiler results.
view-cpupprof:
	$(GO) tool pprof -http :8080 __cpu.out

.PHONY: view-mempprof
## view-mempprof: [test] After running 'bench', this will launch a browser to view the memory profiler results.
view-mempprof:
	$(GO) tool pprof -http :8080 __mem.out

.PHONY: view-trace
## view-trace: [test] After running 'bench', this will launch a browser to view the trace results.
view-trace:
	$(GO) tool trace __trace.out

# goplicate-end:golang

# goplicate-start:iac
#-------------------------------------------------------------------------------
# Infrastructure-as-Code

.PHONY: clean-tests
## clean-tests: [clean] Cleans all OpenTofu test artifacts.
clean-tests:
	@ $(HEADER) "=====> Cleaning artifacts from tests..."
	- find . -type d -name ".terraform" | xargs -I% rm -fv "%"
	- find . -type d -name "terratest-*" | xargs -I% rm -fv "%"
	- find . -type f -name "terraform.tfstate*" | xargs -I% rm -fv "%"
	- find ./examples -type d -name "\.*" | xargs -I% rm -fv "%"

.PHONY: clean-tf
## clean-tf: [clean] Clean OpenTofu leftovers.
clean-tf:
	@ $(HEADER) "=====> Cleaning OpenTofu artifacts..."
	find . -type d -name "terraform.d" | xargs -I% rm -Rfv "%"
	find . -type d -name ".terraform" | xargs -I% rm -Rfv "%"
	find . -type f -name ".terraform.lock.hcl" | xargs -I% rm -fv "%"

# goplicate-end:iac

# goplicate-start:linting
#-------------------------------------------------------------------------------
# Linting

.PHONY: pre-commit
## pre-commit: [lint]* Runs `pre-commit` against all files.
pre-commit:
	@ $(HEADER) "=====> Running pre-commit..."
	pre-commit run --all-files

.PHONY: license
## license: [lint]* Checks the licenses of all files and dependencies.
license:
	@ $(HEADER) "=====> Checking license usage..."
	@ - trivy fs --config trivy-license.yaml --format json . 2>/dev/null > .licenses.cache.json
	@ cat .licenses.cache.json | jq -Mr '[.Results[] | select(.Packages) | .Packages[] | select(.Licenses) | .Licenses[]] | to_entries | group_by(.value)[] | {Name: .[0].value, Count: length} | "\(.Name): \(.Count)"'

	@ $(HEADER) "=====> Checking license headers..."
	@ echo "Missing/outdated:"
	@ - licensei header

# goplicate-end:linting

# goplicate-start:git
#-------------------------------------------------------------------------------
# Git Tasks

.PHONY: changelog
## changelog: [release]* Generates the CHANGELOG for the release.
changelog:
	@ $(HEADER) "=====> Updating the CHANGELOG..."
	git cliff -o CHANGELOG.md

.PHONY: tag
## tag: [release]* Signs and tags the release.
tag:
	@ $(HEADER) "=====> Signing and tagging the release..."
	@ if [ $$(git status -s -uall | wc -l) != 1 ]; then $(ERROR) "Git workspace must be clean."; exit 1; fi;

	@ $(WHITE) "This release will be tagged as: $(NEXT_VERSION)"
	@ echo "---------------------------------------------------------------------"
	@ read -p "Press any key to continue, or press Control+C to cancel. " x;

	@ echo " "
	@ chag update $(NEXT_VERSION)
	@ echo " "

	@ $(HEADER) "These are the contents of the CHANGELOG for this release. Are these correct?"
	@ $(WHITE) "---------------------------------------------------------------------"
	@ chag contents
	@ $(WHITE) "---------------------------------------------------------------------"
	@ echo "Are these release notes correct? If not, cancel and update CHANGELOG.md."
	@ read -p "Press any key to continue, or press Control+C to cancel. " x;

	@ echo " "

	git add .
	git commit -a -m "relprep: Preparing the $(NEXT_VERSION) release." --no-verify
	chag tag --sign

# goplicate-end:git

#-------------------------------------------------------------------------------
# Specific to this project.

.PHONY: clean
## clean: [clean]* Run standard cleanup tasks.
clean: clean-ds clean-bench clean-tests clean-hugo

.PHONY: clean-hugo
## clean-hugo: [clean] Cleanup cached Hugo assets.
clean-hugo:
	@ $(HEADER) "=====> Cleaning Hugo assets..."
	rm -Rf dist/ public/
	hugo mod clean --all

.PHONY: lint
## lint: [lint]* Run linting tasks.
lint: license pre-commit

.PHONY: build
## build: [website] Perform a production build of the website.
build:
	cd themes/dst2024 && npm run build
	HUGO_ENV=production hugo \
		--baseURL "https://devsec.tools" \
		--cleanDestinationDir \
		--enableGitInfo \
		--forceSyncStatic \
		--gc \
		--minify \
		--templateMetrics \
		--templateMetricsHints \
	;

.PHONY: serve
## serve: [website] Perform a development build of the website, and run a local web server.
serve:
	HUGO_ENV=development hugo serve \
		--buildDrafts \
		--cleanDestinationDir \
		--disableFastRender \
		--enableGitInfo \
		--environment development \
		--forceSyncStatic \
		--gc \
		--minify \
		--noHTTPCache \
		--templateMetrics \
		--templateMetricsHints \
		--watch \
	;

# Implement make test

# Implement make list-tests

# Implement make unit

# Implement make acc

# Implement make examples

# Implement make mutate

# Implement make fuzz

# Implement make bench

# Implement make quickbench

# Implement make terratest

# go install github.com/mdempsky/unconvert@latest
# go install github.com/nikolaydubina/smrcptr@latest
# go install golang.org/x/vuln/cmd/govulncheck@latest
# brew install k1LoW/tap/tbls
