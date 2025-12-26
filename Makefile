# Default domain if none is provided
DOMAIN ?= example.com

# Default target: show help
.DEFAULT_GOAL := help

# Colors
YELLOW := \033[1;33m
GREEN := \033[1;32m
BLUE := \033[1;34m
RED := \033[1;31m
RESET := \033[0m

# --- Helper: validate domain -------------------------------------------------

check-domain:
    @if [ "$(DOMAIN)" = "example.com" ]; then \
        echo "$(RED)[!] DOMAIN not set. Use: make <target> DOMAIN=<domain>$(RESET)"; \
        exit 1; \
    fi

# --- init: check dependencies ------------------------------------------------

init:
    @echo "$(BLUE)=== Checking environment ===$(RESET)"
    @command -v whois >/dev/null 2>&1 && echo "$(GREEN)[OK] whois found$(RESET)" || echo "$(RED)[MISSING] whois$(RESET)"
    @command -v dig >/dev/null 2>&1 && echo "$(GREEN)[OK] dig found$(RESET)" || echo "$(RED)[MISSING] dig$(RESET)"
    @command -v curl >/dev/null 2>&1 && echo "$(GREEN)[OK] curl found$(RESET)" || echo "$(RED)[MISSING] curl$(RESET)"
    @command -v vt >/dev/null 2>&1 && echo "$(GREEN)[OK] vt-cli found$(RESET)" || echo "$(YELLOW)[INFO] vt-cli not installed (fallback to curl)$(RESET)"
    @if [ -z "$$VT_API_KEY" ]; then \
        echo "$(YELLOW)[WARN] VT_API_KEY not set (VirusTotal fallback requires it)$(RESET)"; \
    else \
        echo "$(GREEN)[OK] VT_API_KEY set$(RESET)"; \
    fi
    @if [ -z "$$URLSCAN_API_KEY" ]; then \
        echo "$(YELLOW)[WARN] URLSCAN_API_KEY not set (URLScan submission disabled)$(RESET)"; \
    else \
        echo "$(GREEN)[OK] URLSCAN_API_KEY set$(RESET)"; \
    fi
    @echo "$(BLUE)=== Environment check complete ===$(RESET)"

# --- help menu ---------------------------------------------------------------

help:
    @echo ""
    @echo "$(BLUE)Threat Intelligence Toolkit — Makefile Commands$(RESET)"
    @echo ""
    @echo "$(YELLOW)Usage:$(RESET)"
    @echo "  make <target> DOMAIN=<domain>"
    @echo ""
    @echo "$(YELLOW)Targets:$(RESET)"
    @echo "  help        Show this help message"
    @echo "  init        Check dependencies and API keys"
    @echo "  enrich      Run full enrichment workflow"
    @echo "  vt          Run VirusTotal lookup only"
    @echo "  urlscan     Submit domain/URL to URLScan.io"
    @echo "  python      Run Python enrichment workflow"
    @echo "  all         Run all enrichment tasks"
    @echo ""
    @echo "$(YELLOW)Examples:$(RESET)"
    @echo "  make enrich DOMAIN=interiewca.icu"
    @echo "  make vt DOMAIN=interiewca.icu"
    @echo ""

# --- Enrichment targets ------------------------------------------------------

enrich: check-domain
    @echo "$(BLUE)=== Running full enrichment for $(DOMAIN) ===$(RESET)"
    ./tools/domain_enrich.sh $(DOMAIN)

vt: check-domain
    @echo "$(BLUE)=== Running VirusTotal lookup for $(DOMAIN) ===$(RESET)"
    ./tools/vt_lookup.sh $(DOMAIN)

urlscan: check-domain
    @echo "$(BLUE)=== Submitting $(DOMAIN) to URLScan.io ===$(RESET)"
    ./tools/urlscan_submit.sh $(DOMAIN)

python: check-domain
    @echo "$(BLUE)=== Running Python enrichment for $(DOMAIN) ===$(RESET)"
    python3 tools/domain_enrich.py $(DOMAIN)

all: check-domain enrich vt urlscan python
    @echo "$(GREEN)=== All tasks completed for $(DOMAIN) ===$(RESET)"
