################################################################################
#
# python-urllib3
#
################################################################################

<<<<<<< HEAD
PYTHON_URLLIB3_VERSION = 2.0.4
PYTHON_URLLIB3_SOURCE = urllib3-$(PYTHON_URLLIB3_VERSION).tar.gz
PYTHON_URLLIB3_SITE = https://files.pythonhosted.org/packages/31/ab/46bec149bbd71a4467a3063ac22f4486ecd2ceb70ae8c70d5d8e4c2a7946
=======
PYTHON_URLLIB3_VERSION = 1.26.9
PYTHON_URLLIB3_SOURCE = urllib3-$(PYTHON_URLLIB3_VERSION).tar.gz
PYTHON_URLLIB3_SITE = https://files.pythonhosted.org/packages/1b/a5/4eab74853625505725cefdf168f48661b2cd04e7843ab836f3f63abf81da
>>>>>>> origin/2022.02.x
PYTHON_URLLIB3_LICENSE = MIT
PYTHON_URLLIB3_LICENSE_FILES = LICENSE.txt
PYTHON_URLLIB3_CPE_ID_VENDOR = python
PYTHON_URLLIB3_CPE_ID_PRODUCT = urllib3
PYTHON_URLLIB3_SETUP_TYPE = pep517
PYTHON_URLLIB3_DEPENDENCIES = host-python-hatchling
HOST_PYTHON_URLLIB3_DEPENDENCIES = host-python-hatchling

$(eval $(python-package))
$(eval $(host-python-package))
