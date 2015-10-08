Redmine Shared API
-------

This is a plugin share some endpoints of API.

### New endpoints for NON-admin users

* [GET] /shared/custom_fields.xml | .json
* [GET] /shared/users.xml | .json
* [GET] /shared/settings.xml | .json

```
<settings>
    <text_formatting>textile</text_formatting>
    <gravatar_enabled>0</gravatar_enabled>
    <gravatar_default>wavatar</gravatar_default>
    <version>Redmine 3.1.1.stable</version>
    <environment></environment>
</settings>
```

### New endpoints for NON authorized (public) users:

* [GET] /public/settings.xml | .json

```
<settings>
	<rest_api_enabled>1</rest_api_enabled>
</settings>
```

LICENSE
-------
This plugin is released under the GPL v2 license. See
LICENSE for more information.


Compatible with:	Redmine 4.0.x, 3.2.x, 3.1.x, 3.0.x, 2.6.x, 2.5.x

Powered by [www.ahausoftware.com](http://www.ahausoftware.com/redmine-outlook) 
