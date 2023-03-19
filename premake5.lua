-- glad

project "glad"
  kind "StaticLib"
  language "C"
  cdialect "gnu99"
  staticruntime "On"
  systemversion "latest"

  targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("%{wks.location}/build/" .. outputdir .. "%{prj.name}")

  includedirs {
    "%{IncludeDir.glad}"
  }

  files {
    "include/glad/glad.h",
    "include/KHR/khrplatform.h",
    "src/glad.c",
  }

  filter "system:linux"
    pic "On"
  
  filter "system:macosx"
    pic "On"

  filter "configurations:Debug"
    runtime "Debug"
    symbols "On"

  filter "configurations:Release"
    runtime "Release"
    optimize "On"
