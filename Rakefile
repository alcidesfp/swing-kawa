# -*- coding: utf-8; mode: Ruby -*-
require 'rake/clean'

task :jar => [:src, 'MyApp1.jar']
file 'MyApp1.jar' => ['manifest.txt'] do |task|
  sh "jar -vcfm #{task.name} #{task.prerequisites} *.class */*.class"
end

task :src => [:gui, 'main.class']
file 'main.class' => ['main.scm'] do |task|
  sh "kawa --main -C #{task.prerequisites}"
end

task :gui => ['gui/MyAppFrmUI.class', 'gui/MyApp.class']
file 'gui/MyAppFrmUI.class' => ['gui/MyAppFrmUI.java'] do |task|
  sh "javac #{task.prerequisites}"
end
file 'gui/MyApp.class' => ['gui/MyApp.scm'] do |task|
  sh "kawa -C #{task.prerequisites}"
end

CLEAN.include("**/*.class")
CLEAN.include("*.jar")

task :default => :src
