function cleanrobinson
    set initialLocation = $PWD
    set root '/mnt/c/projects/robinson/Projects/Robinson/'
    set -l projects
    set -a projects 'BUL' 'BULTest'
    set -a projects 'ConnectApi'
    set -a projects 'Core' 'CoreTest'
    set -a projects 'DAL' 'DALCompanyTest' 'DALTest'
    set -a projects 'Framework' 'FrameworkTest'
    set -a projects 'LanguageResource'
    set -a projects 'MobileControllersTest'
    set -a projects 'PresentationBridge' 'PresentationBridgeTest'
    set -a projects 'PumaDto'
    set -a projects 'RobinsonWebApp' 'RobinsonWebAppTests' 'RobinsonWebAppTests.Integration'
    set -a projects 'TenForce.Execution.Api2' 'TenForce.Execution.Api2.Implementation'
    set -a projects 'TenForce.Execution.Api2.OData' 'TenForce.Execution.Api2.OData.Client'
    set -a projects 'TenForce.Execution.Api2.OData.Tests' 'TenForce.Execution.Api2.OData.Tests.Integration'
    set -a projects 'TenForce.Execution.Api2.ODataApi'
    set -a projects 'TenForce.Execution.Api2.Tests'
    set -a projects 'TenForce.Execution.Export'
    set -a projects 'TenForce.Execution.IntegrationTests.Common'
    set -a projects 'TenForce.Execution.Logging' 'TenForce.Execution.Logging.Tests'
    set -a projects 'TenForce.Execution.Scripting' 'TenForce.Execution.Scripting.Common' 'TenForce.Execution.Scripting.Common.Test'
    set -a projects 'TenForce.Execution.Scripting.Examples' 'TenForce.Execution.Scripting.Test'
    set -a projects 'TenForce.Execution.Test' 'TenForce.Execution.Test.Common'
    set -a projects 'ThirdPartyComponents'
    set -a projects 'ThrottlingSuite'

    for project in $projects
        set projectDir $root$project
        rm -rf $projectDir'/bin'
        rm -rf $projectDir'/obj'
    end
end
