desc 'Download the datas'
task :ingest do
  puts "Running Ingester!"

  a = Mechanize.new { |agent|
    agent.user_agent_alias = 'Mac Safari'
  }

  a.get('http://www.kirksflyshop.com/fishing-report/') do |page|

    p page

  end
end