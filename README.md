# regexft
 Regex Filter Text: This PowerShell GUI (WinForms) allows users to perform multiple regex searches on text data. The regex results are then used to populate a template, generating the desired text output. Users can save presets for future use.
 

**How to use the script:**
1. Paste some kind of input text into the "Input" textfield.
2. Setup some regex search filter (Additonal regex fields are hidden on the buttom, just make the window bigger).
3. Build a template in the "Template" textfield that you want to have in the the "Output" textfield. For example:
```
This is my Template <regex1>.
Please send feedback on <regex4> about it.
```
This example would replace `<regex1>` and `<regex4>` with the results of the filter you put into regex1 and regex4.

4. Press the button "Generate" to get the output.

You also can save presets by typing in some name and change between them with the Combobox. They will save and replace all regex filters, descriptions fields and the template. Your input will stay in place.

Configs are saved in "%appdata%\regexft" and the folder can be accessed with the "Config Folder" button.

**Known problems and limitations**
- The GUI seems to be really broken with high dpi windows settings > 100% (Useable but not nice to look at).
- Currently it will use the first match on each regex filter that it can find.
