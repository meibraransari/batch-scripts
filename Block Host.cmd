@echo off
SET hosts=%windir%\system32\drivers\etc\hosts
attrib -r %hosts%
echo. >>%hosts%
FOR %%A IN (

activation.easeus.com
track.easeus.com
66.39.112.91 
216.92.151.227 
216.92.61.7 
www.easeus.com 


) DO (
 echo 127.0.0.1 %%A >>%hosts%
)
attrib +r %hosts%
echo Successfully added entries


pause


