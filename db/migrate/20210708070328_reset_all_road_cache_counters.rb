class ResetAllRoadCacheCounters < ActiveRecord::Migration[6.1]
  def up
    Road.find_each { |road| Road.reset_counters(road.id, :likes_count) }
  end

  def down
    
  end
end
