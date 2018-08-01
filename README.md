Redmine Shared API
-------

This is a plugin share some endpoints of API.

### New endpoints for NON-admin users

* [GET] /shared/custom_fields.xml | .json
* [GET] /shared/users.xml | .json
```
<users type="array">
	<user>
		<id>1</id>
		<login>user</login>
		<firstname>Alex</firstname>
		<lastname>Black</lastname>
		<mail>anton@ahausoftware.com</mail>
		<created_on>2015-03-18T00:08:44Z</created_on>
		<last_login_on>2016-03-31T15:18:41Z</last_login_on>
		<avatar_url>http://www.gravatar.com/avatar/f1f7086b63fa35b7588614516fade808?rating=PG&size=50&default=monsterid</avatar_url>
	</user>
</users>
```

* [GET] /shared/settings.xml | .json
* [GET] /shared/projects.xml | .json

* [GET] /shared/workflow/transitions.xml?role_id={id}&tracker_id={id} | .json
* [GET] /shared/workflow/permissions.xml?role_id={id}&tracker_id={id} | .json

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
