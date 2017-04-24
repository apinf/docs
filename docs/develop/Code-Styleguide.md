# Code styleguide

Standards for developing Apinf code.

## CSS styleguide

File structure:

*   Each template - own style file
*   Each style file - overriding section, function section
*   Everything global - global.less file

## Commenting styleguide

Firstly, comment the file with the EUPL-1.1 license:

`
/* Copyright 2017 Apinf Oy
This file is covered by the EUPL license.
You may obtain a copy of the licence at
https://joinup.ec.europa.eu/community/eupl/og_page/european-union-public-licence-eupl-v11 */
`

Then, separate the imports by sections. The sections should be one of the below and the comments must be exactly the same text. They also should follow this order unless `eslint` complains about it.

* Meteor packages imports - anything imported straight from meteor
* Meteor contributed packages imports - contributed packages, like kadira:flow-router or tap:i18n
* Collection imports - all collections needed by the current file
* APINF imports - any custom file, probably from `/core`
* Npm packages imports - if importing packages from npm are needed

Examples below:

```
// Meteor packages imports
import { Template } from 'meteor/templating';

// Meteor contributed packages imports
import { FlowRouter } from 'meteor/kadira:flow-router';

// Collection imports
import ApiMetadata from '../../collection';

// APINF imports
import formatDate from '/core/helper_functions/format_date';

// Npm packages imports
import _ from 'lodash';
```
