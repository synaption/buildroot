################################################################################
#
# python-gast
#
################################################################################

<<<<<<< HEAD
PYTHON_GAST_VERSION = 0.5.4
PYTHON_GAST_SOURCE = gast-$(PYTHON_GAST_VERSION).tar.gz
PYTHON_GAST_SITE = https://files.pythonhosted.org/packages/e4/41/f26f62ebef1a80148e20951a6e9ef4d0ebbe2090124bc143da26e12a934c
=======
PYTHON_GAST_VERSION = 0.5.3
PYTHON_GAST_SOURCE = gast-$(PYTHON_GAST_VERSION).tar.gz
PYTHON_GAST_SITE = https://files.pythonhosted.org/packages/48/a3/0bd844c54ae8141642088b7ae09dd38fec2ec7faa9b7d25bb6a23c1f266f
>>>>>>> origin/2022.02.x
PYTHON_GAST_SETUP_TYPE = setuptools
PYTHON_GAST_LICENSE = BSD-3-Clause
PYTHON_GAST_LICENSE_FILES = LICENSE

$(eval $(host-python-package))
