# Lunar Launcher Wrapper Batch Helper
- Made to make https://github.com/Zxnii/LunarLaunchWrapper user friendly and easy to use!
- BTW: You must run the setup command (option 3) or drop in your built jar.
- The setup commands downloads the jar that I built and uploaded on Discord, if you are afraid it's tampered with, you are welcome to build it. Refer to the build section.
# Modules
- `lunar forge` Forge
- `lunar` - OptiFine
- I honestly don't know the other syntax lol
# Versions
- Put in the full version of any version that lunar supports! Make sure it's downloaded already.
# Note
- Requires JDK 17
- To add agents, add this to the jvmargs setting: `"-javaagent:C:/Path/To/Your/Agent.jar"`
# Building LunarLaunchWrapper
- If you want to build LunarLaunchWrapper from Zani's repo on your own, you'll want IntelliJ
- Set your Projects SDK to JDK 17
- Click the Gradle widget in the top right
- Run `gradle shadowjar`
- Get the jar from build/libs
- Put it in a directory with my batch file and use the batch file!
