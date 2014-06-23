import re
import time
from threading import Thread
from Configuration import Configuration

def log_check(rule):
    #Checks the passed rule for the LOG keyword for which logfile to use
    log_files = []
    for keys in rule:
        match = re.findall('LOG', keys)
        if match:
            matches = rule.get(keys)
            matches = matches.replace(" ", "")
            log_files.append(matches)
    
    # The list is used to use more than one log file per rule, however this is not yet implemented in the rest of the code.
    if len(log_files) == 1:
        return log_files[0]
    else:
        print 'Error with the logfile. Please check the value of the LOG keyword in the rule file'

def interval_check(rule):
    config = Configuration()
    
    interval = config.interval
    for keys in rule:
        match = re.findall('INTERVAL', keys)
        if match:
            interval = rule.get(keys)
            interval = interval.replace(" ", "")
    
    interval_time = interval.split(":")
    print len(interval_time)
    
    if len(interval_time) == 3: # hours
        hour = int(interval_time[0])
        minutes = int(interval_time[1])
        seconds = int(interval_time[2])
        interval = hour*3600 + minutes*60 + seconds
        return interval
    elif len(interval_time) == 2: # minutes
        minutes = int(interval_time[0])
        seconds = int(interval_time[1])
        interval = minutes*60 + seconds    
        return interval
    elif len(interval_time) == 1:
        seconds = int (interval_time[0])
        interval = seconds
        return interval
    else:
        print ('Interval is incorrect')

def Monitor():
    from FileManager import FileManager
    FileManager = FileManager()
    rules = FileManager.get_rules()
    ruledef = FileManager.get_ruledef()
    
    for rule in range (len(rules)):
        thread = Thread( target=manager, args=(rules[rule], ruledef))
        thread.start() 

def manager(rule, ruledef):
    from MatchManager import Matching
    from SearchManager import SearchManager
    from Trigger import Trigger
    from FileManager import FileManager
    
    Matching = Matching()
    SearchManager = SearchManager()
    Trigger = Trigger()
    FileManager = FileManager()
       
    log_file = log_check(rule)
    log = FileManager.read_logfile(log_file)
    
    matchlist = Matching.get_matchlist(log, rule, ruledef)  
    action = SearchManager.searchmanager(matchlist, rule, log)  
    Trigger.perform_action(action, rule)
    
    interval = interval_check(rule)
    #time.sleep(interval)
       
    
Monitor()