Set-StrictMode -Version Latest
  class ProjectExt: Project
  {
  	ProjectExt([string] $subscriptionId, [SVTResource] $svtResource): Base($subscriptionId, $svtResource)
  {

  }
  	hidden [ControlResult] CheckPrivateProjects([ControlResult] $controlResult)
  	{
          $controlResult.AddMessage([VerificationResult]::Failed,
                                              "From github repo");

      return $controlResult;
  	}
  }
