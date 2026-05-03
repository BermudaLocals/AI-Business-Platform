@echo off
REM DIGITAL ASSET AUDIT - Folder Structure Creator
REM Run this to create your organized workspace

echo ==========================================
echo  DIGITAL ASSET AUDIT SYSTEM
echo  Folder Structure Setup
echo ==========================================
echo.

set BASEDIR=%USERPROFILE%\Documents\DIGITAL_ASSET_AUDIT

echo Creating folders in: %BASEDIR%
echo.

mkdir "%BASEDIR%\01_Business_Ideas\Raw_Concepts"
mkdir "%BASEDIR%\01_Business_Ideas\Validated_Concepts"
mkdir "%BASEDIR%\01_Business_Ideas\MVP_Plans"

mkdir "%BASEDIR%\02_Courses_And_Guides\Course_Outlines"
mkdir "%BASEDIR%\02_Courses_And_Guides\Video_Scripts"
mkdir "%BASEDIR%\02_Courses_And_Guides\Workbooks"
mkdir "%BASEDIR%\02_Courses_And_Guides\Slide_Decks"
mkdir "%BASEDIR%\02_Courses_And_Guides\Completed_Courses"

mkdir "%BASEDIR%\03_Prompts_And_AI_Tools\Prompt_Packs"
mkdir "%BASEDIR%\03_Prompts_And_AI_Tools\AI_Workflows"
mkdir "%BASEDIR%\03_Prompts_And_AI_Tools\Tool_Configurations"

mkdir "%BASEDIR%\04_Social_Media_Content\TikTok_Scripts"
mkdir "%BASEDIR%\04_Social_Media_Content\Instagram_Carousels"
mkdir "%BASEDIR%\04_Social_Media_Content\YouTube_Scripts"
mkdir "%BASEDIR%\04_Social_Media_Content\Email_Sequences"
mkdir "%BASEDIR%\04_Social_Media_Content\Lead_Magnets"

mkdir "%BASEDIR%\05_Website_And_App_Ideas\Landing_Page_Designs"
mkdir "%BASEDIR%\05_Website_And_App_Ideas\App_Wireframes"
mkdir "%BASEDIR%\05_Website_And_App_Ideas\MVP_Code"
mkdir "%BASEDIR%\05_Website_And_App_Ideas\Database_Schemas"

mkdir "%BASEDIR%\06_PDFs_And_Workbooks\Checklists"
mkdir "%BASEDIR%\06_PDFs_And_Workbooks\Planners"
mkdir "%BASEDIR%\06_PDFs_And_Workbooks\Trackers"
mkdir "%BASEDIR%\06_PDFs_And_Workbooks\Ebooks"
mkdir "%BASEDIR%\06_PDFs_And_Workbooks\Reports"

mkdir "%BASEDIR%\07_Images_And_Designs\Logos_And_Branding"
mkdir "%BASEDIR%\07_Images_And_Designs\Canva_Templates"
mkdir "%BASEDIR%\07_Images_And_Designs\Stock_Photos"
mkdir "%BASEDIR%\07_Images_And_Designs\Social_Graphics"

mkdir "%BASEDIR%\08_Scripts_And_Videos\Video_Scripts"
mkdir "%BASEDIR%\08_Scripts_And_Videos\Sales_Videos"
mkdir "%BASEDIR%\08_Scripts_And_Videos\Tutorial_Videos"
mkdir "%BASEDIR%\08_Scripts_And_Videos\Raw_Footage"

mkdir "%BASEDIR%\09_Spreadsheets_And_Templates\Financial_Models"
mkdir "%BASEDIR%\09_Spreadsheets_And_Templates\Business_Templates"
mkdir "%BASEDIR%\09_Spreadsheets_And_Templates\Content_Calendars"
mkdir "%BASEDIR%\09_Spreadsheets_And_Templates\Project_Trackers"

mkdir "%BASEDIR%\10_Repurpose_Into_Products\To_Productize"
mkdir "%BASEDIR%\10_Repurpose_Into_Products\In_Progress"
mkdir "%BASEDIR%\10_Repurpose_Into_Products\Quality_Check"

mkdir "%BASEDIR%\11_Ready_To_Sell\Products"
mkdir "%BASEDIR%\11_Ready_To_Sell\Apps"
mkdir "%BASEDIR%\11_Ready_To_Sell\Courses"
mkdir "%BASEDIR%\11_Ready_To_Sell\Services"

echo ✓ Folder structure created successfully!
echo.
echo LOCATION: %BASEDIR%
echo.
pause
