{
  lib, buildPythonPackage, fetchPypi,
  setuptools,
  beautifulsoup4,
  aiohttp,
}:

buildPythonPackage rec {
  pname = "cambrinary";
  version = "0.1.3";

  propagatedBuildInputs = [
    setuptools
    beautifulsoup4
    aiohttp
  ];

  src = fetchPypi {
    inherit pname version;
    sha256 = "d65d309a576a123dffa6f39bbf3ca777d98466408c76f4dccdc37bb510ab98e6";
  };

  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/xueyuanl/cambrinary";
    description = "A Linux terminal online dictionary.";
    license = licenses.gpl3Plus;
    #maintainers = with maintainers; [ TODO ];
    platforms = with lib.platforms; linux;
  };
}
