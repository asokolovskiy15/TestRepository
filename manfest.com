### YamlMime:Sample
sample:
- name: Using Azure APIs
  description: A sample that shows how to use Azure APIs.
  image: /repo/root/rel/path/image.jpg
  generateZip: true
  extendedZipContent:
  - path: /Folderone
    target: /
  azureDeploy: /path/to/template.json
  author: dend
  languages:
  - csharp
  - fsharp
  technologies:
  - azure
  vssolution: /repo/test/solution.sln
  extensions:
  - someExtensionEntry:
    - altEntry
    - altContent
