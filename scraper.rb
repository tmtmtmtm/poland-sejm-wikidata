#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/poland-sejm-wikipedia', column: 'wikipedia__pl')
names.shuffle.each_slice(250) do |sliced|
  EveryPolitician::Wikidata.scrape_wikidata(names: { pl: names })
end

