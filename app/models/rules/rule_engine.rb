require "rexml/document"

# RulesEngine uses some third-party libraries:
#
#   ReXML for xml parsing: http://www.germane-software.com/software/rexml/
#   Sexpistol for expressions: https://github.com/aarongough/sexpistol
#
class RuleEngine
  def self.items_for_user(user)
    items = Array.new
    rules.each { |rule|
      rules.add_matches(items, user)
    }
  end

  def self.singleton
    @@s_singleton = RuleEngine.new if s_singleton.nil?
    @@s_singleton
  end

  def initialize
    @parser = Sexpistol.new
  end

  private

  def rules
    if @rules.nil?
      @rules = Array.new

      directory = "app/models/rules"
      xml_files = Dir(directory + "/*.xml")
      xml_files.each { |xml_file|
        doc = Document.new(xml_file)
        doc.elements.each("rule") { | rule_element |
          @rules << parse_rule(rule_element)
        }
      }
    end
    @rules
  end

  def parse_rule(rule_element)
    rule_definition = RuleDefinition.new
    condition = rule_element.attributes["test"]
    rule_definition.condition = @parser.parse_string(condition)
  end
end