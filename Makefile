.PHONY: save-vs-code-extensions install-vs-code-extensions

save-vs-code-extensions:
	flatpak run com.visualstudio.code --list-extensions >> vs_code_extensions.txt

install-vs-code-extensions:
	cat vs_code_extensions.txt | xargs -n 1 flatpak run com.visualstudio.code --install-extension

