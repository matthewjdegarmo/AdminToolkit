#Region Push-LocalScheduledTask

<#
.SYNOPSIS
    Deploy a local scheduled task to a remote machine

.DESCRIPTION
    This function exports the XML for a local scheduled task and creates that task on a remote machine.

.PARAMETER ComputerName
    This parameter specifies the remote host(s) to create the task(s) on. This parameter supports tab-completion based on the current domain.
    I can type '-ComputerName cgo-2' and this will tab-complete computer objects in the current domain that match the string 'cgo-2'

.PARAMETER TaskName
    This parameter specifies the local task name to export and create on a remote machine. I have not tested how to export nested tasks (See Register-ScheduledTask '-TaskPath' parameter)
    You can specify multiple task names, separated by comma please.

.PARAMETER Credential
    Specifies a user account that has permission to perform this action. The default is the current user.
    This credential is used for a task against the local pc, and the remote PC. because of this, the account used must have rights to do the required tasks on all computers involved.

    Type a user name, such as User01 or Domain01\User01 , or enter a PSCredential object generated by
    the `Get-Credential` cmdlet. If you type a user name, you're prompted to enter the password.

    Credentials are stored in a PSCredential
    (/dotnet/api/system.management.automation.pscredential)object and the password is stored as a
    SecureString (/dotnet/api/system.security.securestring).

    > [!NOTE] > For more information about SecureString data protection, see > How secure is
    SecureString? (/dotnet/api/system.security.securestring#how-secure-is-securestring).

.PARAMETER Force
    Instructs the cmdlet to perform the operation without prompting for confirmation.
    Additionally this will overwrite any remote tasks with the same name.
    If you attempt to deploy a local task on a remote machine without using -Force, the export will fail.

.PARAMETER PassThru
    I haven't gotten this switch to be accurate. Currently this function will ALWAYS spit out Scheduled Task objects that it creates whether -PassThru is present or not. 
    The goal is to have the function not return objects if -PassThru is not present... like every other advanced function.

.EXAMPLE
    PS>Deploy-LocalScheduledTask -ComputerName Computer1,Computer2 -TaskName "Task1","Task2"

    Description
    -----------
    This will export both Task1 and Task2 scheduled tasks to both Computer1 and Computer2.

.EXAMPLE
    PS>Deploy-LocalScheduledTask -ComputerName Computer1 -TaskName "Task1" -Credential (Get-Credential) -Force

    Description
    -----------
    This will export the task Task1 to Computer1 using the provided credentials. You can also save the results of Get-Credential to a variable and use the '-Credential $cred' method.
    This will also overwrite a possible existing task named Task1 since -Force is used.

.NOTES
    Author: Matthew J. DeGarmo
    Handle: @matthewjdegarmo
#>
function Push-LocalScheduledTask() {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string[]] $ComputerName,

        [Parameter(Mandatory)]
        [string[]] $TaskName,

        [PSCredential] $Credential,

        [switch] $Force,

        #? Should this switch just be tossed?
        #TODO This switch doesn't do anything. Need to figure out how to supress Invoke-Command output for Register-ScheduledTask command.
        [switch] $PassThru
    )

    begin {
        $ComputerName = foreach ($Computer in $ComputerName) {
            if (Test-Connection -ComputerName $Computer -Count 1 -ErrorAction SilentlyContinue) {
                $Computer
            }
            else {
                Write-Warning "Test-Connection to '$ComputerName' failed."
            }
        }
    }

    process {
        try {
            foreach ($Computer in $ComputerName) {
                $InvokeParams = @{
                    ComputerName = $Computer
                }
                if ($PSBoundParameters.ContainsKey('Credential')) { $InvokeParams += @{Credential = $Credential } }
                
                foreach ($Task in $TaskName) {
                    if ($PSBoundParameters.ContainsKey('Credential')) {
                        $TaskXML = Invoke-Command -ComputerName $env:COMPUTERNAME -Credential $Credential -Command { Export-ScheduledTask $using:Task | Out-String }
                    }
                    else {
                        $TaskXML = Export-ScheduledTask $Task | Out-String
                    }

                    $TaskParams = @{
                        Xml      = $TaskXML
                        TaskName = $Task
                    }
                    if ($PSBoundParameters.ContainsKey('Force')) { $TaskParams += @{Force = $true } }
                    if (-Not($PSBoundParameters.ContainsKey('PassThru'))) { $TaskParams += @{InformationAction = 'Ignore' } }

                    Invoke-Command @InvokeParams -ScriptBlock {
                        Register-ScheduledTask @using:TaskParams
                    }
                }
            }
        }
        catch {
            Write-Error "$($_.Exception.Message) - Line Number: $($_.InvocationInfo.ScriptLineNumber)"
        }
    }

    end {}
}
#EndRegion Push-LocalScheduledTask