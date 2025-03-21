project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    defines
	{
		"YAML_CPP_STATIC_DEFINE"
	}

    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/**.h"
    }

    includedirs
    {
        "include"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
    
    filter "configurations:Release"
        runtime "Release"
        optimize "on"