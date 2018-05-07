{ fetchFromGitHub, stdenv, cmake, libGLU_combined, xorg
}:
stdenv.mkDerivation {
  name = "nanogui";
  src = fetchFromGitHub {
    owner = "wjakob";
    repo = "nanogui";
    rev = "885e4fccc69bbfdd4c527009eef8ed33641d9765";
    sha256  = "1jhhfmsmkyyb334i4h66bj2xnvf8a9c2rxf7n00a3dzzlf06jddj";
    fetchSubmodules = true;
  };

  enableParallelBuilding = true;

  buildInputs = [ cmake libGLU_combined xorg.libXi xorg.libXcursor xorg.libXinerama xorg.libXrandr xorg.libXxf86vm];

  meta = {
    description = "NanoGUI is a minimalistic cross-platform widget library for OpenGL 3.x or higher.";
    homepage = https://github.com/wjakob/nanogui;
    maintainers = [ "Wenzel Jakob <wenzel.jakob@epfl.ch>" ];
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.bsd3;
  };
}
