<!--
Copyright 2017 Adobe Systems Incorporated

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->

Navigation (v1)
====
Navigation component written in HTL that renders a website navigation tree.

## Features
* Can be used on both templates and pages
* Defines a configurable navigation root, and structure depth to allow flexibility in building the navigation tree
* Automatically filters out pages that should be hidden from navigation
* Automatically handles redirect targets defined on pages

### Use Object
The Navigation component uses the `com.adobe.cq.wcm.core.components.models.Navigation` Sling model as its Use-object.

### Component Policy Configuration Properties
The following configuration properties are used:

1. `./navigationRoot` - the root page from which to build the navigation. Can be a blueprint master, language master or regular page.
2. `./skipNavigationRoot` - if `true`, excludes the navigation root in the resulting tree, including its descendants only.
3. `./collectAllPages` - if `true`, collects all pages that are descendants of the `./navigationRoot`. Overrides `./structureDepth`.
4. `./structureDepth` - the depth of the navigation structure, relative to the navigation root.

### Edit Dialog Properties
The following properties are written to JCR for the Navigation component and are expected to be available as `Resource` properties:

1. `./navigationRoot` - the root page from which to build the navigation. Can be a blueprint master, language master or regular page.
2. `./skipNavigationRoot` - if `true`, excludes the navigation root in the resulting tree, including its descendants only.
3. `./collectAllPages` - if `true`, collects all pages that are descendants of the `./navigationRoot`. Overrides `./structureDepth`.
4. `./structureDepth` - the depth of the navigation structure, relative to the navigation root.

## Client Libraries
The component provides a `core.wcm.components.navigation.v1.editor` editor client library category that includes
JavaScript handling for dialog interaction. It is already included by its edit and design dialogs.

## BEM Description
```
BLOCK cmp-navigation
    ELEMENT cmp-navigation__group
    ELEMENT cmp-navigation__item
        MOD cmp-navigation__item--active
        MOD cmp-navigation__item--level-*
    ELEMENT cmp-navigation__item-link
```

## Information
* **Vendor**: Adobe
* **Version**: v1
* **Compatibility**: AEM 6.3
* **Status**: production-ready
* **Documentation**: [https://www.adobe.com/go/aem\_cmp\_navigation\_v1](https://www.adobe.com/go/aem_cmp_navigation_v1)
* **Component Library**: [https://www.adobe.com/go/aem\_cmp\_library\_navigation](https://www.adobe.com/go/aem_cmp_library_navigation)
