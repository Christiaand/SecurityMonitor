#!/usr/bin/env python
import lib.bottle
from lib.bottle import route, template, debug, static_file, TEMPLATE_PATH, error, auth_basic, get, post, request, response, run, view, redirect, SimpleTemplate, HTTPError
from lib.bottledaemon import daemon_run
import os

#######################
#  Application Logic  #
#######################

#

##################
#  Page Routing  #
##################

##### LOG-IN PAGE #####
@route('/')
@view('log-in')
def show_page_index():
	outout = 0

@post('/')  
def login():  

   passwds = { 'niels' : 'niels',}

   username = request.forms.get('username')
   password = request.forms.get('password')

   if not username or not password:
      return { 'error' : 'Please specify username and password' }

   session = session_manager.get_session()
   session['valid'] = False

   if password and passwds.get(username) == password:
      session['valid'] = True
      session['name'] = username

   session_manager.save(session)
   if not session['valid']:
      return { 'error' : 'Username or password is invalid' }

   bottle.redirect(request.COOKIES.get('validuserloginredirect', '/overview'))    

    #username = request.forms.get('username')  
    #password = request.forms.get('password')  
    #if (username, password) == ('niels','niels'):  
    #    return "<p>Your login was correct</p>"  
    #else:  
    #    return "<p>Login failed</p>"  

##### OVERVIEW PAGE #####
@route('/overview')
@view('skeleton', page='Overview')
def show__page_dashboard():
    output = 0

##### RULES PAGES #####
@route('/rules')
@view('skeleton', page='Rules')
def show__page_rules():
	output = 0

##### SETTINGS PAGE #####
@route('/settings', method='GET')
@view('skeleton', page='Settings')
def show__page_settings(output='output'):
	output = 0

##### ABOUT PAGE #####
@route('/about')
@view('skeleton', page='About')
def show__page_about(output='output'):
	output = 0

##### LOGOUT PAGE #####
@route('/logout')
@view('log-in')
def show__page_about():
	session = session_manager.get_session()
	session['valid'] = False
	session_manager.save(session)

##### ABOUT PAGE #####
@route('/bottle')
def show__page_bottle():
    ip = null
    with open('var/secmon/log/bottle.log') as file:
        for line in file:
            if line.startswith("145.109.172.204"):
                ip = "8.8.8.8"
            #line1 = file.readlines()
            #array = file.readlines()
            #array.append("\n\n\n")
            return ip

    #with open('var/secmon/log/bottle.log') as file:
    #   array = file.readlines(2)
    #return array

##### 404 PAGE #####
@error(404)
def error404(error):
    return template('404')

##### PUBLIC FOLDER ROUTE #####
@route('/assets/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='/var/secmon/assets')




# If the following line is enabled, the server will start in non-Daemon mode.
# run(host='0.0.0.0', port=80, debug=True)

# Pathfix for Daemon mode
TEMPLATE_PATH.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "view")))
debug(mode=True)

# If the following lines are enabled, the server will start in Daemon mode.
if __name__ == "__main__":
	daemon_run()