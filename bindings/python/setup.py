# bindings/python/setup.py
from setuptools import setup, Extension
from Cython.Build import cythonize

extensions = [
    Extension("carbon", ["carbon.pyx"], libraries=["carbon"], library_dirs=["../../src"], include_dirs=["../../include"])
]

setup(
    name="carbon",
    ext_modules=cythonize(extensions),
)
