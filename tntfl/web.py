import cgi

from mako.lookup import TemplateLookup
from mako import exceptions

tl = TemplateLookup(directories=['templates'])


def serve_template(templatename, **kwargs):
    print get_template(templatename, **kwargs)


def get_template(templatename, **kwargs):
    form = cgi.FieldStorage()
    if "view" in form and form["view"].value == "json":
        template = "json/" + templatename
    else:
        template = templatename
    try:
        mytemplate = tl.get_template(template)
        return mytemplate.render(**kwargs)
    except:
        return exceptions.text_error_template().render()


def redirect_302(redirectionTo):
    print "Status: 302 Found"
    print "Location: " + redirectionTo
    print


def fail_404():
    print "Status: 404 Not Found"
    print
