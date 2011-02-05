#!/usr/bin/env ruby -wKU

=begin

	 @template_history:
	  2011-02-05 1.0.0: Created 
=end

  require 'optparse'       # http://ruby.about.com/od/advancedruby/a/optionparser.htm
  require '~/lib/ric.rb'
  #require 'ric'

  $PROG_VER = '0.9.0'
  $DEBUG    = false
  
  $myconf = {
    :app_name            => 'travasa_plugin',
    :from                => '~/git/yaffle_guide/vendor/plugins/ric_admin/',
    :to                  => '~/git/ric_admin/',
    :files               => ["**/{*.{rb,sh}}", 'README', 'VERSION' , ],
  }

  def usage(comment=nil)
    puts "#{$0} v.#{$PROG_VER}"
    puts "Usage2: #{File.basename $0} [-dhjv] [-l LOGFILE] <FOO> <BAR>"
    puts $opts
    pred comment if comment
    exit 11
  end
  
  # tipo xcopy
  def travasa(from,to,glob_files, opts={})
    puts "+ Travasing: #{yellow from} ==> #{green to}"
    puts "+ First the differences:"
    unless File.exists?("#{to}/.git")
      fatal "Sorry cant travase data to an unversioned dir, u'know the casin?!?"
      exit 1
    end
    unless File.exists?("#{to}/.safe_travasa")
      fatal 12, "Sorry cant travase data unless you ask me to. You have to do this before:\n  #{yellow "touch #{to}/.safe_travasa"} . Thanks"
    end
    # With this i can understand what has been deleted :)
    deb `diff -qr #{from} #{to} |egrep -v '\\.git' `
    puts "+ Files: #{cyan glob_files}"
    Dir.chdir(from)
    Dir.glob(glob_files).each{ |file|
      from_file = "#{from}/#{file}"
      to_file   = "#{to}/#{file}"
      destdir = File.dirname(to_file)
      deb "Copying: #{yellow from_file}.."
      #  could need creating the dir..
      if File.exists?(destdir)
        # just copy the file
        command = "cp \"#{from_file}\" \"#{to_file}\""
      else
        # mkdir dest AND copy file
        pred "Dir '#{destdir}' doesnt exist!"
        command = "mkdir -p \"#{destdir}\" && cp \"#{from_file}\" \"#{to_file}\""
      end
      
      if opts.fetch(:dryrun, false)
        puts "[DRYRUN] Skipping #{gray command}"
      else
        ret =  `#{command} 2>&1`
        print( "[ret=$?]", ret, "\n") if (ret.length > 1 || $? != 0) # if output or not zero
      end
    }
  end

  def real_program
    debug_on 'Just created script, presuming u need some debug. TODO REMOVE ME when everything works!' if $DEBUG
      # Maybe you may want to check on ARGV
    deb "+ Your configuration: #{purple $myconf}"
    travasa(
      File.expand_path($myconf[:from]), 
      File.expand_path($myconf[:to]), 
      $myconf[:files]  , 
      :dryrun => false # true
    )
  end

  def main()
    lib_autoinit # if u dont like the autoinit, uncomment init :)
    real_program 
  end

  lib_automain(__FILE__)
