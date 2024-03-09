 let
   nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
   pkgs = import nixpkgs { config = {}; overlays = []; };
 in

 pkgs.mkShellNoCC {
   packages = with pkgs; [
     cowsay
     lolcat
   ];

   # This is a variable that we can use in the shellHook.
   GREETING = "Hello, Nix!";

   # This is a shellHook, a command that is run when the shell starts.
   shellHook = ''
     echo $GREETING | cowsay | lolcat
   '';
}
