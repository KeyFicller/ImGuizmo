project "imguizmo"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    
    targetdir(envir_work_space_directory .. "/bin/" .. envir_output_directory .. "/%{prj.name}")
    objdir(envir_work_space_directory .. "/bin-int/" .. envir_output_directory .. "/%{prj.name}")

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
