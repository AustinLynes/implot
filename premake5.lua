project "ImPlot"
	kind "StaticLib"
	language "C++"
    staticruntime "on"

    targetdir     (BIN_DIR)
    objdir        (OBJ_DIR)

	includedirs
	{
		"./",
		"../imgui",
	}

	files
	{
		"*.cpp",
		"*.h",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
