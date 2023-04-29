#Config Path
$configPath = "$env:APPDATA\regexft"

# Check if the config folder already exists
if (-not (Test-Path -Path $configPath -PathType Container)) {
    # Check if the folder already exists. If the folder doesn't exist, create it using New-Item
    New-Item -Path $configPath -ItemType Directory | Out-Null
}

### GUI START ###
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$mainform                        = New-Object system.Windows.Forms.Form
$mainform.ClientSize             = New-Object System.Drawing.Point(480,666)
$mainform.text                   = "Regexft"
$mainform.TopMost                = $false

$label_regex                     = New-Object system.Windows.Forms.Label
$label_regex.text                = "Regex"
$label_regex.AutoSize            = $true
$label_regex.width               = 25
$label_regex.height              = 10
$label_regex.location            = New-Object System.Drawing.Point(10,24)
$label_regex.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$label_regex_input               = New-Object system.Windows.Forms.Label
$label_regex_input.text          = "Regex Input"
$label_regex_input.AutoSize      = $true
$label_regex_input.width         = 25
$label_regex_input.height        = 10
$label_regex_input.location      = New-Object System.Drawing.Point(103,24)
$label_regex_input.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$label_description               = New-Object system.Windows.Forms.Label
$label_description.text          = "Description"
$label_description.AutoSize      = $true
$label_description.width         = 25
$label_description.height        = 10
$label_description.location      = New-Object System.Drawing.Point(309,24)
$label_description.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$label_reg1                      = New-Object system.Windows.Forms.Label
$label_reg1.text                 = "<regex1>"
$label_reg1.AutoSize             = $true
$label_reg1.width                = 25
$label_reg1.height               = 10
$label_reg1.location             = New-Object System.Drawing.Point(10,60)
$label_reg1.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$label_reg2                      = New-Object system.Windows.Forms.Label
$label_reg2.text                 = "<regex2>"
$label_reg2.AutoSize             = $true
$label_reg2.width                = 25
$label_reg2.height               = 10
$label_reg2.location             = New-Object System.Drawing.Point(10,87)
$label_reg2.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$label_reg3                      = New-Object system.Windows.Forms.Label
$label_reg3.text                 = "<regex3>"
$label_reg3.AutoSize             = $true
$label_reg3.width                = 25
$label_reg3.height               = 10
$label_reg3.location             = New-Object System.Drawing.Point(10,113)
$label_reg3.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$label_reg4                      = New-Object system.Windows.Forms.Label
$label_reg4.text                 = "<regex4>"
$label_reg4.AutoSize             = $true
$label_reg4.width                = 25
$label_reg4.height               = 10
$label_reg4.location             = New-Object System.Drawing.Point(10,142)
$label_reg4.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$label_reg5                      = New-Object system.Windows.Forms.Label
$label_reg5.text                 = "<regex5>"
$label_reg5.AutoSize             = $true
$label_reg5.width                = 25
$label_reg5.height               = 10
$label_reg5.location             = New-Object System.Drawing.Point(10,172)
$label_reg5.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_regex1                     = New-Object system.Windows.Forms.TextBox
$text_regex1.multiline           = $false
$text_regex1.width               = 187
$text_regex1.height              = 20
$text_regex1.location            = New-Object System.Drawing.Point(103,55)
$text_regex1.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_desc1                      = New-Object system.Windows.Forms.TextBox
$text_desc1.multiline            = $false
$text_desc1.width                = 158
$text_desc1.height               = 20
$text_desc1.location             = New-Object System.Drawing.Point(309,55)
$text_desc1.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_regex2                     = New-Object system.Windows.Forms.TextBox
$text_regex2.multiline           = $false
$text_regex2.width               = 187
$text_regex2.height              = 20
$text_regex2.location            = New-Object System.Drawing.Point(103,81)
$text_regex2.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_desc2                      = New-Object system.Windows.Forms.TextBox
$text_desc2.multiline            = $false
$text_desc2.width                = 158
$text_desc2.height               = 20
$text_desc2.location             = New-Object System.Drawing.Point(309,81)
$text_desc2.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_regex3                     = New-Object system.Windows.Forms.TextBox
$text_regex3.multiline           = $false
$text_regex3.width               = 187
$text_regex3.height              = 20
$text_regex3.location            = New-Object System.Drawing.Point(103,109)
$text_regex3.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_desc3                      = New-Object system.Windows.Forms.TextBox
$text_desc3.multiline            = $false
$text_desc3.width                = 158
$text_desc3.height               = 20
$text_desc3.location             = New-Object System.Drawing.Point(309,110)
$text_desc3.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_regex4                     = New-Object system.Windows.Forms.TextBox
$text_regex4.multiline           = $false
$text_regex4.width               = 187
$text_regex4.height              = 20
$text_regex4.location            = New-Object System.Drawing.Point(103,139)
$text_regex4.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_desc4                      = New-Object system.Windows.Forms.TextBox
$text_desc4.multiline            = $false
$text_desc4.width                = 158
$text_desc4.height               = 20
$text_desc4.location             = New-Object System.Drawing.Point(309,139)
$text_desc4.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_desc5                      = New-Object system.Windows.Forms.TextBox
$text_desc5.multiline            = $false
$text_desc5.width                = 158
$text_desc5.height               = 20
$text_desc5.location             = New-Object System.Drawing.Point(309,169)
$text_desc5.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_regex5                     = New-Object system.Windows.Forms.TextBox
$text_regex5.multiline           = $false
$text_regex5.width               = 187
$text_regex5.height              = 20
$text_regex5.location            = New-Object System.Drawing.Point(103,169)
$text_regex5.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$multitext_input                 = New-Object system.Windows.Forms.RichTextBox
$multitext_input.multiline       = $true
$multitext_input.width           = 212
$multitext_input.height          = 179
$multitext_input.location        = New-Object System.Drawing.Point(10,240)
$multitext_input.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$multitext_input.WordWrap        = $false

$label_input                     = New-Object system.Windows.Forms.Label
$label_input.text                = "Input:"
$label_input.AutoSize            = $true
$label_input.width               = 25
$label_input.height              = 10
$label_input.location            = New-Object System.Drawing.Point(16,211)
$label_input.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$multitext_output                = New-Object system.Windows.Forms.RichTextBox
$multitext_output.multiline      = $true
$multitext_output.width          = 212
$multitext_output.height         = 179
$multitext_output.location       = New-Object System.Drawing.Point(257,239)
$multitext_output.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$multitext_output.WordWrap        = $false

$label_output                    = New-Object system.Windows.Forms.Label
$label_output.text               = "Output:"
$label_output.AutoSize           = $true
$label_output.width              = 25
$label_output.height             = 10
$label_output.location           = New-Object System.Drawing.Point(263,211)
$label_output.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$multitext_template              = New-Object system.Windows.Forms.RichTextBox
$multitext_template.multiline    = $true
$multitext_template.width        = 212
$multitext_template.height       = 179
$multitext_template.location     = New-Object System.Drawing.Point(10,471)
$multitext_template.Font         = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$multitext_template.WordWrap     = $false

$label_template                  = New-Object system.Windows.Forms.Label
$label_template.text             = "Template:"
$label_template.AutoSize         = $true
$label_template.width            = 25
$label_template.height           = 10
$label_template.location         = New-Object System.Drawing.Point(16,443)
$label_template.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$button_generate                 = New-Object system.Windows.Forms.Button
$button_generate.text            = "Generate"
$button_generate.width           = 117
$button_generate.height          = 30
$button_generate.location        = New-Object System.Drawing.Point(348,449)
$button_generate.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$button_savepreset               = New-Object system.Windows.Forms.Button
$button_savepreset.text          = "Save Preset"
$button_savepreset.width         = 117
$button_savepreset.height        = 30
$button_savepreset.location      = New-Object System.Drawing.Point(348,522)
$button_savepreset.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$button_loadpreset               = New-Object system.Windows.Forms.Button
$button_loadpreset.text          = "Load Preset"
$button_loadpreset.width         = 117
$button_loadpreset.height        = 30
$button_loadpreset.location      = New-Object System.Drawing.Point(348,563)
$button_loadpreset.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$combobox_presetlist             = New-Object system.Windows.Forms.ComboBox
$combobox_presetlist.text        = "Preset List"
$combobox_presetlist.width       = 100
$combobox_presetlist.height      = 20
$combobox_presetlist.location    = New-Object System.Drawing.Point(236,525)
$combobox_presetlist.Font        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CheckBox1                       = New-Object system.Windows.Forms.CheckBox
$CheckBox1.text                  = "checkBox"
$CheckBox1.AutoSize              = $false
$CheckBox1.width                 = 95
$CheckBox1.height                = 20
$CheckBox1.location              = New-Object System.Drawing.Point(348,606)
$CheckBox1.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$CheckBox1.Enabled				 = $false
$CheckBox1.Visible				 = $false

$CheckBox2                       = New-Object system.Windows.Forms.CheckBox
$CheckBox2.text                  = "checkBox"
$CheckBox2.AutoSize              = $false
$CheckBox2.width                 = 95
$CheckBox2.height                = 20
$CheckBox2.location              = New-Object System.Drawing.Point(348,626)
$CheckBox2.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$CheckBox2.Enabled				 = $false
$CheckBox2.Visible				 = $false

$CheckBox3                       = New-Object system.Windows.Forms.CheckBox
$CheckBox3.text                  = "checkBox"
$CheckBox3.AutoSize              = $false
$CheckBox3.width                 = 95
$CheckBox3.height                = 20
$CheckBox3.location              = New-Object System.Drawing.Point(348,647)
$CheckBox3.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$CheckBox3.Enabled				 = $false
$CheckBox3.Visible				 = $false

$text_preset_name                = New-Object system.Windows.Forms.TextBox
$text_preset_name.multiline      = $false
$text_preset_name.width          = 100
$text_preset_name.height         = 20
$text_preset_name.location       = New-Object System.Drawing.Point(350,497)
$text_preset_name.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$label_preset                    = New-Object system.Windows.Forms.Label
$label_preset.text               = "Preset Name:"
$label_preset.AutoSize           = $true
$label_preset.width              = 25
$label_preset.height             = 10
$label_preset.location           = New-Object System.Drawing.Point(262,501)
$label_preset.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_regex6                     = New-Object system.Windows.Forms.TextBox
$text_regex6.multiline           = $false
$text_regex6.width               = 187
$text_regex6.height              = 20
$text_regex6.location            = New-Object System.Drawing.Point(103,732)
$text_regex6.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_desc6                      = New-Object system.Windows.Forms.TextBox
$text_desc6.multiline            = $false
$text_desc6.width                = 158
$text_desc6.height               = 20
$text_desc6.location             = New-Object System.Drawing.Point(309,732)
$text_desc6.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$label_reg6                      = New-Object system.Windows.Forms.Label
$label_reg6.text                 = "<regex6>"
$label_reg6.AutoSize             = $true
$label_reg6.width                = 25
$label_reg6.height               = 10
$label_reg6.location             = New-Object System.Drawing.Point(10,734)
$label_reg6.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_regex7                     = New-Object system.Windows.Forms.TextBox
$text_regex7.multiline           = $false
$text_regex7.width               = 187
$text_regex7.height              = 20
$text_regex7.location            = New-Object System.Drawing.Point(103,762)
$text_regex7.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_desc7                      = New-Object system.Windows.Forms.TextBox
$text_desc7.multiline            = $false
$text_desc7.width                = 158
$text_desc7.height               = 20
$text_desc7.location             = New-Object System.Drawing.Point(309,762)
$text_desc7.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$label_reg7                      = New-Object system.Windows.Forms.Label
$label_reg7.text                 = "<regex7>"
$label_reg7.AutoSize             = $true
$label_reg7.width                = 25
$label_reg7.height               = 10
$label_reg7.location             = New-Object System.Drawing.Point(10,765)
$label_reg7.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_regex8                     = New-Object system.Windows.Forms.TextBox
$text_regex8.multiline           = $false
$text_regex8.width               = 187
$text_regex8.height              = 20
$text_regex8.location            = New-Object System.Drawing.Point(103,796)
$text_regex8.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$label_reg8                      = New-Object system.Windows.Forms.Label
$label_reg8.text                 = "<regex8>"
$label_reg8.AutoSize             = $true
$label_reg8.width                = 25
$label_reg8.height               = 10
$label_reg8.location             = New-Object System.Drawing.Point(10,799)
$label_reg8.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_desc8                      = New-Object system.Windows.Forms.TextBox
$text_desc8.multiline            = $false
$text_desc8.width                = 158
$text_desc8.height               = 20
$text_desc8.location             = New-Object System.Drawing.Point(309,796)
$text_desc8.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_regex9                     = New-Object system.Windows.Forms.TextBox
$text_regex9.multiline           = $false
$text_regex9.width               = 187
$text_regex9.height              = 20
$text_regex9.location            = New-Object System.Drawing.Point(103,825)
$text_regex9.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$label_reg9                      = New-Object system.Windows.Forms.Label
$label_reg9.text                 = "<regex9>"
$label_reg9.AutoSize             = $true
$label_reg9.width                = 25
$label_reg9.height               = 10
$label_reg9.location             = New-Object System.Drawing.Point(10,828)
$label_reg9.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_desc9                      = New-Object system.Windows.Forms.TextBox
$text_desc9.multiline            = $false
$text_desc9.width                = 158
$text_desc9.height               = 20
$text_desc9.location             = New-Object System.Drawing.Point(309,825)
$text_desc9.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_regex10                    = New-Object system.Windows.Forms.TextBox
$text_regex10.multiline          = $false
$text_regex10.width              = 187
$text_regex10.height             = 20
$text_regex10.location           = New-Object System.Drawing.Point(103,855)
$text_regex10.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$text_desc10                     = New-Object system.Windows.Forms.TextBox
$text_desc10.multiline           = $false
$text_desc10.width               = 158
$text_desc10.height              = 20
$text_desc10.location            = New-Object System.Drawing.Point(309,855)
$text_desc10.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$label_reg10                     = New-Object system.Windows.Forms.Label
$label_reg10.text                = "<regex10>"
$label_reg10.AutoSize            = $true
$label_reg10.width               = 25
$label_reg10.height              = 10
$label_reg10.location            = New-Object System.Drawing.Point(10,858)
$label_reg10.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$button_openconfig               = New-Object system.Windows.Forms.Button
$button_openconfig.text          = "Config Folder"
$button_openconfig.width         = 117 #94
$button_openconfig.height        = 30
#$button_openconfig.location      = New-Object System.Drawing.Point(232,607)
$button_openconfig.location      = New-Object System.Drawing.Point(348,604)
$button_openconfig.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$mainform.controls.AddRange(@($label_regex,$label_regex_input,$label_description,$label_reg1,$label_reg2,$label_reg3,$label_reg4,$label_reg5,$text_regex1,$text_desc1,$text_regex2,$text_desc2,$text_regex3,$text_desc3,$text_regex4,$text_desc4,$text_desc5,$text_regex5,$multitext_input,$label_input,$multitext_output,$label_output,$multitext_template,$label_template,$button_generate,$button_savepreset,$button_loadpreset,$combobox_presetlist,$CheckBox1,$CheckBox2,$CheckBox3,$text_preset_name,$label_preset,$text_regex6,$text_desc6,$label_reg6,$text_regex7,$text_desc7,$label_reg7,$text_regex8,$label_reg8,$text_desc8,$text_regex9,$label_reg9,$text_desc9,$text_regex10,$text_desc10,$label_reg10,$button_openconfig))

$multitext_input.Add_Enter({  })

### GUI END ###

# Function to apply the Regex search parameters to the text and return the result
function ApplyRegex($text, $regex) {
    if ([string]::IsNullOrWhiteSpace($regex)) {
        # If the Regex parameter is empty, return the text unchanged
        return [string]::Empty
    }
    else {
        # Otherwise, apply the Regex search parameter to the text to get the first match
        $matches = [regex]::Matches($text, $regex)
        if ($matches.Count -gt 0) {
            $firstMatch = $matches[0].Value
            return $firstMatch
        }
        else {
            return ""
        }
    }
}


# Event handler for the button click
$button_Click = {
    # Retrieve the Regex search parameters from the textboxes
    $regex1 = $text_regex1.Text
    $regex2 = $text_regex2.Text
    $regex3 = $text_regex3.Text
    $regex4 = $text_regex4.Text
    $regex5 = $text_regex5.Text
    $regex6 = $text_regex6.Text
    $regex7 = $text_regex7.Text
    $regex8 = $text_regex8.Text
    $regex9 = $text_regex9.Text
    $regex10 = $text_regex10.Text

    # Retrieve the text from the textbox
    $inputText = $multitext_input.Text

    # Apply the Regex search parameters on the input text
    $result1 = ApplyRegex $inputText $regex1
    $result2 = ApplyRegex $inputText $regex2
    $result3 = ApplyRegex $inputText $regex3
    $result4 = ApplyRegex $inputText $regex4
    $result5 = ApplyRegex $inputText $regex5
    $result6 = ApplyRegex $inputText $regex6
    $result7 = ApplyRegex $inputText $regex7
    $result8 = ApplyRegex $inputText $regex8
    $result9 = ApplyRegex $inputText $regex9
    $result10 = ApplyRegex $inputText $regex10

    # Retrieve the template from the textbox and insert the results from the regex search
    $outputText = $multitext_template.Text -replace '<regex1>', $result1 -replace '<regex2>', $result2 -replace '<regex3>', $result3 -replace '<regex4>', $result4 -replace '<regex5>', $result5 -replace '<regex6>', $result6 -replace '<regex7>', $result7 -replace '<regex8>', $result8 -replace '<regex9>', $result9 -replace '<regex10>', $result10

    # Write the result to the output textbox
    $multitext_output.Text = $outputText.TrimEnd()
}


$open_config_folder = {
Invoke-Item $configPath
}

# Add the button click event handler to the buttons
$button_generate.Add_Click($button_Click)
$button_openconfig.Add_Click($open_config_folder)






#Add an event handler for the KeyDown event to set the .SelectedText property to the contents of the clipboard when Ctrl+V is pressed, instead of replacing the entire text with the new #text. The cursor remains at the current position, and the new text is inserted at that position.

$multitext_input.add_KeyDown({
    param($sender, $e)
    if (($e.KeyCode -eq 'V') -and ($e.Modifiers -eq 'Control')) {
        $text = [Windows.Forms.Clipboard]::GetText()
        $multitext_input.SelectedText = $text
        $e.Handled = $true
    }
})




# Function to save the presets to a file
function SavePresetsToFile {
    $presets = @{
        'Regex1' = @{
            'Pattern' = $text_regex1.Text
            'Description' = $text_desc1.Text
        }
        'Regex2' = @{
            'Pattern' = $text_regex2.Text
            'Description' = $text_desc2.Text
        }
        'Regex3' = @{
            'Pattern' = $text_regex3.Text
            'Description' = $text_desc3.Text
        }
        'Regex4' = @{
            'Pattern' = $text_regex4.Text
            'Description' = $text_desc4.Text
        }
        'Regex5' = @{
            'Pattern' = $text_regex5.Text
            'Description' = $text_desc5.Text
        }
        'Regex6' = @{
            'Pattern' = $text_regex6.Text
            'Description' = $text_desc6.Text
        }
        'Regex7' = @{
            'Pattern' = $text_regex7.Text
            'Description' = $text_desc7.Text
        }
        'Regex8' = @{
            'Pattern' = $text_regex8.Text
            'Description' = $text_desc8.Text
        }
        'Regex9' = @{
            'Pattern' = $text_regex9.Text
            'Description' = $text_desc9.Text
        }
        'Regex10' = @{
            'Pattern' = $text_regex10.Text
            'Description' = $text_desc10.Text
        }
        'Template' = $multitext_template.Text
    }

    $presetName = $text_preset_name.Text

    $filePath = "$env:APPDATA\regexft\$presetName.txt"

    $presets | ConvertTo-Json | Out-File $filePath
}

# Function to load the presets from a file
function LoadPresetsFromFile {
    $presetName = $combobox_presetlist.SelectedItem.ToString()
    $filePath = "$env:APPDATA\regexft\$presetName.txt"
    $presets = Get-Content $filePath | ConvertFrom-Json

    $text_regex1.Text = $presets.Regex1.Pattern
    $text_desc1.Text = $presets.Regex1.Description

    $text_regex2.Text = $presets.Regex2.Pattern
    $text_desc2.Text = $presets.Regex2.Description

    $text_regex3.Text = $presets.Regex3.Pattern
    $text_desc3.Text = $presets.Regex3.Description

    $text_regex4.Text = $presets.Regex4.Pattern
    $text_desc4.Text = $presets.Regex4.Description

    $text_regex5.Text = $presets.Regex5.Pattern
    $text_desc5.Text = $presets.Regex5.Description

    $text_regex6.Text = $presets.Regex6.Pattern
    $text_desc6.Text = $presets.Regex6.Description

    $text_regex7.Text = $presets.Regex7.Pattern
    $text_desc7.Text = $presets.Regex7.Description

    $text_regex8.Text = $presets.Regex8.Pattern
    $text_desc8.Text = $presets.Regex8.Description

    $text_regex9.Text = $presets.Regex9.Pattern
    $text_desc9.Text = $presets.Regex9.Description

    $text_regex10.Text = $presets.Regex10.Pattern
    $text_desc10.Text = $presets.Regex10.Description

    $multitext_template.Text = $presets.Template
}

# Function to populate the combobox with saved presets
function PopulateComboBoxWithPresets {
    $combobox_presetlist.Items.Clear()
    $presetFiles = Get-ChildItem -Path "$env:APPDATA\regexft" -Filter *.txt
    $presetFiles | ForEach-Object {
        $presetName = $_.BaseName
        $combobox_presetlist.Items.Add($presetName)
    }
}

# Event handler for the Save Preset button
$button_savepreset.Add_Click({
    SavePresetsToFile
    Write-Host "Presets saved to file."
    PopulateComboBoxWithPresets
})

# Event handler for the Load Preset button
$button_loadpreset.Add_Click({
    LoadPresetsFromFile
    Write-Host "Presets loaded from file."
})

# Event handler for the combobox selection change
$combobox_presetlist.Add_SelectedIndexChanged({
    LoadPresetsFromFile
})

# Load existing presets into the combobox
PopulateComboBoxWithPresets

[void]$mainform.ShowDialog()