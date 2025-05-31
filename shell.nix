



{ pkgs ? import <nixpkgs> {} }:

let
    project_name = "apuntes de asignatura Lenguaje Matemático, Conjuntos y Números de la UNED";
    message = "Entorno para ${project_name}.";
in
    pkgs.mkShell {
        buildInputs = with pkgs; [
            pandoc
            gnumake

            haskellPackages.pandoc-crossref
            # haskellPackages.pandoc-csv2table


            git
            bash-completion
            gawk
            gnugrep
            starship
        ];
        shellHook = ''
            echo ${message}
            eval "$(starship init bash)"
            alias ls="ls --color"
        '';
}





