function AddOrUpdate-Reference($scriptsFolderProjectItem) {
    try {
        $referencesFileProjectItem = $scriptsFolderProjectItem.ProjectItems.Item("_references.js")
    }
    catch {
        # _references.js file not found
        return
    }

    if ($referencesFileProjectItem -eq $null) {
        # _references.js file not found
        return
    }

    $referencesFilePath = $referencesFileProjectItem.FileNames(1)
    $referencesTempFilePath = Join-Path $env:TEMP "_references.tmp.js"
    
    if (-not (Select-String -path $referencesFilePath $fancyBoxFileName -quiet)) {
        
        # File has no existing matching reference line
        # Add the full reference line to the beginning of the file
        "/// <reference path=""$fancyBoxFileName"" />" | Add-Content $referencesTempFilePath -Encoding UTF8
         Get-Content $referencesFilePath | Add-Content $referencesTempFilePath

        # Copy over the new _references.js file
        Copy-Item $referencesTempFilePath $referencesFilePath -Force
        Remove-Item $referencesTempFilePath -Force
    }
}

function Remove-Reference($scriptsFolderProjectItem) {
    try {
        $referencesFileProjectItem = $scriptsFolderProjectItem.ProjectItems.Item("_references.js")
    }
    catch {
        # _references.js file not found
        return
    }

    if ($referencesFileProjectItem -eq $null) {
        return
    }

    $referencesFilePath = $referencesFileProjectItem.FileNames(1)
    $referencesTempFilePath = Join-Path $env:TEMP "_references.tmp.js"

    if (Select-String -path $referencesFilePath $fancyBoxFileName -quiet) {
        # Delete the line referencing the file
        Get-Content $referencesFilePath | ForEach-Object { if (-not (Select-String -inputobject $_ $fancyBoxFileName -quiet)) { $_ } } > $referencesTempFilePath

        # Copy over the new _references.js file
        Copy-Item $referencesTempFilePath $referencesFilePath -Force
        Remove-Item $referencesTempFilePath -Force
    }
}

$fancyBoxFileName = "jquery.fancybox.js"

# Get the project item for the scripts folder
try {
    $scriptsFolderProjectItem = $project.ProjectItems.Item("Scripts")
    $projectScriptsFolderPath = $scriptsFolderProjectItem.FileNames(1)
}
catch {
    # No Scripts folder
    Write-Host "No scripts folder found"
}