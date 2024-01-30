# How to create your own keycap

1. Install [OpenSCAD](https://openscad.org/).
2. Clone [rsheldiii's](https://github.com/rsheldiii/KeyV2) excellent KeyV2 project into KeyV2

   ```git clone https://github.com/nharrer/KeyV2.git```

   (Note: There is currently a bug with recessed stems, so this is a patched fork - pull request is pending).
3. Open `commodore_key.scad` in OpenSCAD. Hit F6 and save the stl.

### Notes

- You might want to adjust `inlay_offset`, which is the space between the inlay and the key body. This might depend a lot upon your printer.
- `inlay_offset` only changes the size of the inlay. So if it is too tight or loose, you only need to export and print the inlay again. The body always stays the same.
- Change the parameters inside `c64key()`, if you want to create a different kind of keycap. Consult the [KeyV2](https://github.com/rsheldiii/KeyV2) repository on how to do that. The parameters I chose are for an OEM Profile key of row 5 (for the ESC key) with a Cherry MX stem with a recessed stem. The key fits perfectly into my Razer Blackwidow keyboard.
