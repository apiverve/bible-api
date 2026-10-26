from setuptools import setup, find_packages

setup(
    name='apiverve_bible',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Bible retrieves scripture passages and verses across nine public-domain translations, including the modern Berean Standard Bible (BSB), KJV, ASV, YLT and Darby. Supply a book, chapter, and optional verse number to get the text with testament classification, word count, and chapter totals.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/bible?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
