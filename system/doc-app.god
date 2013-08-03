God.watch do |w|
  w.name = "doc-app"
  w.start = "ruby /Users/jeff/wistia/doc/the-app.rb"
  w.behavior(:clean_pid_file)
  w.keepalive
end

God.watch do |w|
  w.name = "elasticsearch"
  w.start = "ruby /Users/jeff/wistia/doc/elasticsearch"
  w.behavior(:clean_pid_file)
  w.keepalive(cpu_max: 50.percent)
end
