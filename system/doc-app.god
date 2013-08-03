God.watch do |w|
  w.name = "doc-app"
  w.start = "ruby /opt/apps/wistia-doc/the-app.rb"
  w.pid_file = "/var/run/wistia-doc/wistia-doc-app.pid"
  w.behavior(:clean_pid_file)
  w.keepalive
end

God.watch do |w|
  w.name = "elasticsearch"
  w.start = "elasticsearch -f"
  w.pid_file = "/var/run/wistia-doc/elasticsearch.pid"
  w.behavior(:clean_pid_file)
  w.keepalive(cpu_max: 50.percent)
end
