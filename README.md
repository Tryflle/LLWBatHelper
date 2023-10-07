# Lunar Launcher Wrapper Batch Helper
- Made to make https://github.com/Zxnii/LunarLaunchWrapper user friendly and easy to use!
- BTW: Downloads a prebuilt agent that I built and uploaded on Discord, if you don't want this, you can build it yourself. Refer to the building section.
# Modules
- `lunar forge` Forge
- `lunar` - OptiFine
- I honestly don't know the other syntax lol
# Versions
- Put in the full version of any version that lunar supports! Make sure it's downloaded already.
# Note
- Requires JDK 17
- Java Agents are problematic, but if you want you can add in the `:open` location at the end of the file: after `--add-opens java.base/java.lang=ALL-UNNAMED` add `"-javaagent:C:/Path/To/Agent.jar"`
# Building LunarLaunchWrapper
- If you want to build LunarLaunchWrapper from Zani's repo on your own, you'll want IntelliJ
- Set your Projects SDK to JDK 17
- Click the Gradle widget in the top right
- Run `gradle shadowjar`
- Get the jar from build/libs
- Put it in a directory with my batch file and use the batch file!
