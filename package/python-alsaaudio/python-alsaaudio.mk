################################################################################
#
# python-alsaaudio
#
################################################################################

PYTHON_ALSAAUDIO_VERSION = 0.9.2
PYTHON_ALSAAUDIO_SOURCE = pyalsaaudio-$(PYTHON_ALSAAUDIO_VERSION).tar.gz
<<<<<<< HEAD
=======
#PYTHON_ALSAAUDIO_SITE = https://files.pythonhosted.org/packages/52/b6/44871791929d9d7e11325af0b7be711388dfeeab17147988f044a41a6d83
>>>>>>> origin/2022.02.x
PYTHON_ALSAAUDIO_SITE = https://files.pythonhosted.org/packages/a9/bd/24f576c07953671edfeba2545c3c92c46e97384f622957ecf95967c2b456
PYTHON_ALSAAUDIO_SETUP_TYPE = setuptools
PYTHON_ALSAAUDIO_LICENSE = Python-2.0
PYTHON_ALSAAUDIO_LICENSE_FILES = LICENSE
PYTHON_ALSAAUDIO_DEPENDENCIES = alsa-lib

$(eval $(python-package))
