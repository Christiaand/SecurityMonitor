<%

#############################################################
#              skeleton.tpl || Skeleton Template            #
#       This file is called by the bottle router file.      #
# This file will constuct the webpage to one viewable page. #
#############################################################


# Load <head> part and the navigation.
# This file is the same for every page.
include('skeleton_header.tpl')
		
# If the user wants to see the overview page, show this page.
if page == 'Overview':
	include('page_overview.tpl')

# If the user wants to see the rules page, show this page.
elif page == 'Rules':
	include('page_rules.tpl')

# If the user wants to see the settings page, show this page.
elif page == 'Settings':
	include('page_settings.tpl')

# If the user wants to see the About page, show this page.
elif page == 'About':
	include('page_about.tpl')

# If the skeleton can't construct the requested website, load a 404 error.
else:
	include('404.tpl')
end

# Load <footer> part which loads the .js files.
# This file is the same for every page.
include('skeleton_footer.tpl')
%>