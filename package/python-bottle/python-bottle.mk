################################################################################
#
# python-bottle
#
################################################################################

<<<<<<< HEAD
PYTHON_BOTTLE_VERSION = 0.12.25
PYTHON_BOTTLE_SOURCE = bottle-$(PYTHON_BOTTLE_VERSION).tar.gz
PYTHON_BOTTLE_SITE = https://files.pythonhosted.org/packages/fd/04/1c09ab851a52fe6bc063fd0df758504edede5cc741bd2e807bf434a09215
=======
PYTHON_BOTTLE_VERSION = 0.12.21
PYTHON_BOTTLE_SOURCE = bottle-$(PYTHON_BOTTLE_VERSION).tar.gz
PYTHON_BOTTLE_SITE = https://files.pythonhosted.org/packages/95/e3/5749d7657b6fb38d65afb3c0b345514a783de7a9feb4fab594fa0bacc2a0
>>>>>>> origin/2022.02.x
PYTHON_BOTTLE_LICENSE = MIT
PYTHON_BOTTLE_LICENSE_FILES = LICENSE
PYTHON_BOTTLE_CPE_ID_VENDOR = bottlepy
PYTHON_BOTTLE_CPE_ID_PRODUCT = bottle
PYTHON_BOTTLE_SETUP_TYPE = setuptools

$(eval $(python-package))
