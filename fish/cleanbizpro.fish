function cleanbizpro
    set initialLocation = $PWD

    set root '/mnt/c/projects/bizpro-git/'
    set -l projects
    set -a projects  AjaxModalProgressControls/
    set -a projects 'BizPro CLR'/
    set -a projects 'BizPro CLR Classes'/
    set -a projects  BizPro.Data/
    set -a projects  BizPro.DataFetch/
    set -a projects  BizPro.DataFetch.Client/
    set -a projects  BizPro.DataFetch.Client.Data/
    set -a projects  BizPro.DataFetch.Client.Library/
    set -a projects  BizPro.DataFetch.Client.PackageNew/
    set -a projects  BizPro.DataFetch.Client.Service/
    set -a projects  BizPro.DataFetch.Service/
    set -a projects  BizPro.Library/
    set -a projects  BizPro.Library.Notification/
    set -a projects  BizPro.MediaPlayer/
    set -a projects  BizPro.Reports/
    set -a projects  BizPro.Service/
    set -a projects  BizPro.Video.CoverFlow/
    set -a projects  BizPro.Web/
    set -a projects  BizPro.eForms.Offline/BizPro.eForms.Offline/
    set -a projects  BizPro.eForms.Offline/BizPro.eForms.Offline.Android/
    set -a projects  BizPro.eForms.Offline/BizPro.eForms.Offline.iOS/
    set -a projects  BizPro.eForms.Offline/BizPro.eForms.Offline.WinPhone/
    set -a projects  BizPro.eForms.Offline.MAUI/
    set -a projects  BizPro.eForms.Offline.MAUI.Library/
    set -a projects  BizPro.eForms.Offline.Service/
    set -a projects  BuildProcessTemplates/
    set -a projects  DynamicControlPlaceholder/
    set -a projects 'MachineKey Generator'/
    set -a projects  PdfViewer/
    set -a projects 'Planner Upload'/
    set -a projects  Timer/
    set -a projects  pdcClientProdRepository/

    for project in $projects
        set projectDir $root$project
        rm -rf $projectDir'/bin'
        rm -rf $projectDir'/obj'
    end
end
