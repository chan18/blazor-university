# Define the function
function Generate-FolderChecklist {
    param (
        [string]$RootDirectory = "../src",
        [string]$OutputFileName = "./documentation/FolderChecklist.md"
    )

    # Check if the specified root directory exists
    if (-Not (Test-Path -Path $RootDirectory)) {
        Write-Error "Directory $RootDirectory does not exist."
        return
    }

    # Initialize an empty array to hold the output lines
    $outputLines = @()

    # Add a header to the output
    $outputLines += "# Folder Checklist"
    $outputLines += ""

    # Recursively fetch folder structure
    $concepts = Get-ChildItem -Path $RootDirectory -Directory

    foreach ($concept in $concepts) {
        # Add the concept folder as an unchecked item
        $outputLines += "[ ] $($concept.Name)"
        
        # Fetch sub-concepts
        $subConcepts = Get-ChildItem -Path $concept.FullName -Directory
        
        foreach ($subConcept in $subConcepts) {
            # Add the sub-concept folder as an indented unchecked item
            $outputLines += "    [ ] $($subConcept.Name)"
        }
    }

    # Define the output file path
    $outputFilePath = Join-Path -Path (Get-Location) -ChildPath $OutputFileName

    # Write the output to the new Markdown file
    $outputLines | Out-File -FilePath $outputFilePath -Encoding utf8

    # Inform the user
    Write-Output "Markdown file with folder checklist created at: $outputFilePath"
}

# Call the function
Generate-FolderChecklist -RootDirectory "src" -OutputFileName "FolderChecklist.md"
