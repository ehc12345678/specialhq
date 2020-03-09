class Provider_Ref < RuleResult
  attr_reader :provider

  def initialize(id)
    @provider = Provider.find(id)

    # Proxy pattern: this gets all the methods out of provider
    @operations = []
    @operations << [:initialize, [provider]]
  end

  # Proxy pattern: on method miss, call the same thing on the provider
  def method_missing(method, *args, &block)
    @operations << [method, args]
    provider.send(method, *args, &block)
  end
end