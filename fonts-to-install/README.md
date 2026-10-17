## Optional house fonts

LEQ uses Source Serif Pro, Source Sans Pro, and Source Code Pro for its house style. Installing these fonts is optional: if you do not want to install them, comment out the `\include "resources/housefonts.ily"` line in `LilyPond-Engraving-Quickstart/new_song.ly` and LilyPond will use its default fonts.

To install the fonts, install the `.otf` files for all three families using your operating system's font installer:

- **macOS:** Open the `.otf` files in Font Book and choose **Install Font**. For a batch install, select the files in Finder and open them with Font Book.
- **Windows:** Select the `.otf` files, right-click, and choose **Install** (or **Install for all users** if appropriate).
- **Linux:** Copy the `.otf` files into `~/.local/share/fonts/`, then refresh the font cache with `fc-cache -f`.

After installation, restart LilyPond and any editor that was open so it can discover the new fonts. The font files are provided in this folder; see [`LICENSE.md`](LICENSE.md) for their license.