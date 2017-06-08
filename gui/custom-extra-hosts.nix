# custom-extra-hosts definitions
let
    lib = import <nixpkgs/lib>;
in
{
    # merge list of host files
    # mainly to block advertisement systems, trackers and spam/phishing sites
    getDirTextContents = dir:
        let
            filenames = builtins.attrNames (lib.filterAttrs (k: v: v == "regular") (builtins.readDir dir));
            absoluteFilePaths = map (x: toString dir + "/" + x) filenames;
            textContents = map builtins.readFile absoluteFilePaths;
        in        
            lib.concatStringsSep "\n" textContents;
}
