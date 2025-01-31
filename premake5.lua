project "imguizmo"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    
    targetdir(g_workspaceDir .. "/bin/" .. g_outputDir .. "/%{prj.name}")
    objdir(g_workspaceDir .. "/bin-int/" .. g_outputDir .. "/%{prj.name}")

    defines {"_CRT_SECURE_NO_WARNINGS"}
    files
    {
        "ImGuizmo.h",
        "ImGuizmo.cpp"
    }

    includedirs
    {
        "../imgui"
    }
    
    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
