
# Useful for figuring out what's up with flux
flux-debug:
	flux get all -A --status-selector ready=false

lint:
	kube-score score ./apps/**/*.yaml
