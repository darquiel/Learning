# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# .DESCRIPTION
#  This script helps with sorting downloaded files; of varying types.
# .INPUTS
#  Inputs are hardcoded
# .OUTPUTS
#  Script generate an output folder if not present and moves files.
# .NOTES
#  Version:        -- see the GIT repos for version history
#  Repos:          https://azriel.visualstudio.com/_git/scripts
#  Author:         MjA
#  Creation Date:  2022-01-11
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
import os
import shutil
import glob

sourceDir = r"/Users/mja/Downloads/"
targetCmPrsdDirRoot = r"/Users/mja/Downloads.test/CmPrsd/"
targetImageDirRoot = r"/Users/mja/OneDrive/Downloads/DA.Art/Sorted/"
targetInstallersDirRoot = r"/Users/mja/OneDrive/Downloads/Installer/"
targetAudioDirRoot = r"/Users/mja/OneDrive/Downloads/Audio/"
targetExecDirRoot = r"/Users/mja/OneDrive/Downloads/MRA/You-Exec/" 

def SortCmprsdFiles():
    print("-= MoveCompressedFiles    :: Started   =-")
    zDir = targetCmPrsdDirRoot + "Z/"
    pattern = "/*.zip"
    files = glob.glob(sourceDir + pattern)
    for file in files:
        file_name = os.path.basename(file)
        shutil.move(file, zDir + file_name)
    
    rDir = targetCmPrsdDirRoot + "R/"
    pattern = "/*.rar"
    files = glob.glob(sourceDir + pattern)
    for file in files:
        file_name = os.path.basename(file)
        shutil.move(file, rDir + file_name)

    tgzDir = targetCmPrsdDirRoot + "tar.gz/"
    pattern = "/*.tar.gz"
    files glob.glob(sourceDir + pattern)
    for file in files:
        file_name = os.path.basename(file)
        shutil.move(file, tgzDir + file_name)

    isoDir = targetCmPrsdDirRoot + "ISO/"
    pattern = "/*.iso"
    files glob.glob(sourceDir + pattern)
    for file in files:
        file_name = os.path.basename(file)
        shutil.move(file, isoDir + file_name)

    bundleDir = targetCmPrsdDirRoot + "B/"
    pattern = "/*.bundle"
    files glob.glob(sourceDir + pattern)
    for file in files:
        file_name = os.path.basename(file)
        shutil.move(file, bundleDir + file_name)

    print("-= MoveCompressedFiles    :: Completed =-")

SortCmprsdFiles()
