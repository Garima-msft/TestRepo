Set-StrictMode -Version Latest 
class ProjectExt: Project {    
    ProjectExt([string] $subscriptionId, [SVTResource] $svtResource): Base($subscriptionId, $svtResource) {
    }

    hidden [ControlResult] CheckPublicProjects([ControlResult] $controlResult)
	{
                $controlResult.AddMessage([VerificationResult]::verify,"Test message.");

    }
   
}