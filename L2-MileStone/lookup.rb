def get_command_line_argument
  # ARGV is an array that Ruby defines for us,
  # which contains all the arguments we passed to it
  # when invoking the script from the command line.
  # https://docs.ruby-lang.org/en/2.4.0/ARGF.html
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument

# File.readlines reads a file and returns an
# array of string, where each element is a line
# https://www.rubydoc.info/stdlib/core/IO:readlines
dns_raw = File.readlines("zone")

#utility function that -
#filter out the comments and empty lines from zone file
#Iterates over each valid line and split up into 3 columns and builds a nested hash
#map with strip removes empty space for each column
def parse_dns(dns_raw)
  dns_records = {}
  dns_raw.reject { |line| line.empty? || line[0] == "#" }.
    split(",").
    map(&:strip).
    each { |record|
    dns_records[record[1]] = {
      :type => record[0],
      :address => record[2],
    }
  }
end

#utility function that resolves a valid Domain Name to IP Address
def resolve(dns_records, lookup_chain, domain)
  if dns_records[domain] != nil
    if dns_records[domain][:type] == "A"
      lookup_chain << dns_records[domain][:address]
      return lookup_chain
    end
    lookup_chain << dns_records[domain][:address]
    return resolve(dns_records, lookup_chain, dns_records[domain][:address])
  else
    lookup_chain << "This site can't be reached"
    return lookup_chain
  end
end

# To complete the assignment, implement `parse_dns` and `resolve`.
# Remember to implement them above this line since in Ruby
# you can invoke a function only after it is defined.
dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")
