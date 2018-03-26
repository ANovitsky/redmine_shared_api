Redmine Shared API
-------

This is a plugin share some endpoints of API.

### New endpoints for NON-admin users

* [GET] /shared/custom_fields.xml | .json
* [GET] /shared/users.xml | .json
* [GET] /shared/settings.xml | .json
* [GET] /shared/projects.xml | .json

```
<settings>
    <text_formatting>textile</text_formatting>
    <gravatar_enabled>false</gravatar_enabled>
    <gravatar_default>wavatar</gravatar_default>
    <version>Redmine 3.1.1.stable</version>
    <environment></environment>
</settings>
```

### New endpoints for NON authorized (public) users:

* [GET] /public/settings.xml | .json

```
<settings>
	<rest_api_enabled>true</rest_api_enabled>
</settings>
```

How to use
-------
```
  $ cd /path/to/redmine/plugins
  $ git clone git://github.com/ANovitsky/redmine_shared_api.git redmine_shared_api
```
Then restart redmine.

Compatible with:	Redmine 4.0.x, 3.2.x, 3.1.x, 3.0.x, 2.6.x, 2.5.x

License
-------

This plugin is released under the GPL v2 license. See
LICENSE for more information.

Powered by [www.ahausoftware.com](https://www.ahausoftware.com/redmine-outlook) 
