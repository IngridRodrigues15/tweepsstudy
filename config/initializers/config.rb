class ConfigApp
  def self.config
    @config = YAML.load_file(Rails.root.join('config/config.yml'))[Rails.env]
  end
  def self.api
    @api = config['api']
  end
end
