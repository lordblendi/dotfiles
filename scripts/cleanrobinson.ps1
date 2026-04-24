function Clean-Robinson {

    $initialLocation = Get-Location

    $root = "C:\projects\robinson\Projects\Robinson\"

    $projects = @(
        "BUL","BULTest",
        "ConnectApi",
        "Core","CoreTest",
        "DAL","DALCompanyTest","DALTest",
        "Framework","FrameworkTest",
        "LanguageResource",
        "MobileControllersTest",
        "PresentationBridge","PresentationBridgeTest",
        "PumaDto",
        "RobinsonWebApp","RobinsonWebAppTests","RobinsonWebAppTests.Integration",
        "TenForce.Execution.Api2","TenForce.Execution.Api2.Implementation",
        "TenForce.Execution.Api2.OData","TenForce.Execution.Api2.OData.Client",
        "TenForce.Execution.Api2.OData.Tests","TenForce.Execution.Api2.OData.Tests.Integration",
        "TenForce.Execution.Api2.ODataApi",
        "TenForce.Execution.Api2.Tests",
        "TenForce.Execution.Export",
        "TenForce.Execution.IntegrationTests.Common",
        "TenForce.Execution.Logging","TenForce.Execution.Logging.Tests",
        "TenForce.Execution.Scripting","TenForce.Execution.Scripting.Common","TenForce.Execution.Scripting.Common.Test",
        "TenForce.Execution.Scripting.Examples","TenForce.Execution.Scripting.Test",
        "TenForce.Execution.Test","TenForce.Execution.Test.Common",
        "ThirdPartyComponents",
        "ThrottlingSuite"
    )

    foreach ($project in $projects) {

        $projectDir = Join-Path $root $project

        $binPath = Join-Path $projectDir "bin"
        $objPath = Join-Path $projectDir "obj"

        if (Test-Path $binPath) {
            Remove-Item $binPath -Recurse -Force
            Write-Host "Deleted $binPath"
        }

        if (Test-Path $objPath) {
            Remove-Item $objPath -Recurse -Force
            Write-Host "Deleted $objPath"
        }
    }

    Set-Location $initialLocation
}

Clean-Robinson