
from setuptools import setup, find_packages
from bootystrap.core.version import get_version

VERSION = get_version()

f = open('README.md', 'r')
LONG_DESCRIPTION = f.read()
f.close()

setup(
    name='bootystrap',
    version=VERSION,
    description='Bootstrapping application to install common packa',
    long_description=LONG_DESCRIPTION,
    long_description_content_type='text/markdown',
    author='Michael Morrissey',
    author_email='mike.d.morrissey@gmail.com',
    url='https://github.com/compewtertutor/odin-dotfiles',
    license='MIT',
    packages=find_packages(exclude=['ez_setup', 'tests*']),
    package_data={'bootystrap': ['templates/*']},
    include_package_data=True,
    entry_points="""
        [console_scripts]
        bootystrap = bootystrap.main:main
    """,
)
