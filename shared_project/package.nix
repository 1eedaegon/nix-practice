{
  buildPythonApplication,
  setuptools-scm,
  flask,
}: buildPythonApplication {
  pname = "shared_project";
  version = "0.0.1";
  format = "pyproject";
  src = builtins.path { path = ./.; name = "shared_project_source";};
  propagatedBuildInputs = [ setuptools-scm flask ];
}
